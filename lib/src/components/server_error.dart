import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ServerError extends StatelessWidget {
  const ServerError({Key? key, required this.err, this.s}) : super(key: key);

  final Object err;
  final StackTrace? s;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(s.toString());
    }
    final message = err.toString().split(":").last.trim();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 250,
            height: 250,
            margin: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/plant_pot.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(message),
      ],
    );
  }
}
