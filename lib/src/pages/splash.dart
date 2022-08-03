import 'dart:async';

import 'package:beautiflower/src/home.dart';
import 'package:beautiflower/src/services/repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive/hive.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String message = "로딩중입니다.";

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        message = "통신 환경을 확인하고 있습니다.";
      });
      await _checkConnectivity();
      setState(() {
        message = "서버에서 데이터를 불러오고 있습니다.";
      });
      await _getFamilyListData();
      setState(() {
        message = "어플리케이션을 시작합니다.";
      });
      await Future.delayed(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context, _createRoute()),
      );
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Home(),
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  Future<void> _getFamilyListData() async {
    final families = await JsonRepository().fetchFamilies(query: "");
    final familyListBox = Hive.box<String>('families');
    await familyListBox.clear();
    await familyListBox.put(0, families);
  }

  Future<void> _checkConnectivity() async {
    final connectStatus = await Connectivity().checkConnectivity();
    final disconnected = connectStatus == ConnectivityResult.none;
    if (disconnected) {
      await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Row(
            children: const [
              Icon(
                Icons.signal_wifi_connected_no_internet_4,
                // size: 22,
                color: Colors.red,
              ),
              SizedBox(width: 8),
              Text("네트워크 연결"),
            ],
          ),
          content: const Text("네트워크에 연결할 수 없습니다.\n네트워크 상태 확인 후 다시 시도해 주세요."),
          actions: [
            ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: const Text(
                "종료",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const String imageLogoName = 'assets/images/plant_pot.png';
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: screenHeight * 0.35),
            Image.asset(
              imageLogoName,
              width: screenWidth * 0.5,
            ),
            SizedBox(height: screenHeight * 0.03),
            Align(
              child: Text("너의 이름은",
                  style: TextStyle(
                    fontSize: screenWidth * (24 / 360),
                    color: const Color.fromRGBO(255, 255, 255, 0.6),
                  )),
            ),
            const Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpinKitFadingCircle(
                    color: Colors.lightGreen.withOpacity(0.5),
                    size: screenWidth * (14 / 360)),
                const SizedBox(width: 8),
                Text(message,
                    style: TextStyle(
                      fontSize: screenWidth * (14 / 360),
                      color: const Color.fromRGBO(255, 255, 255, 0.6),
                    )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Align(
              child: Text("© Copyright 2022, 김오바지",
                  style: TextStyle(
                    fontSize: screenWidth * (14 / 360),
                    color: const Color.fromRGBO(255, 255, 255, 0.6),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0625,
            ),
          ],
        ),
      ),
    );
  }
}
