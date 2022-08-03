import 'package:beautiflower/src/services/database.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationBarWidget extends ConsumerWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(databaseController).theme;
    final pageIndex = ref.watch(bottomPageIndexProvider.state);
    final appBarTitle = ref.watch(appBarTitleProvider.state);
    final pageController = ref.watch(pageControllerProvider.state);
    return ConvexAppBar(
      items: [
        _photo(),
        _list(),
        _camera(),
        _quiz(),
        _settings(),
      ],
      initialActiveIndex: pageIndex.state,
      onTap: (int index) {
        pageIndex.state = index;
        pageController.state.jumpToPage(index);
        switch (index) {
          case 2:
            appBarTitle.state = "너의 이름은";
            break;
          case 3:
            appBarTitle.state = "퀴즈";
            break;
          case 4:
            appBarTitle.state = "설정";
            break;
          default:
            break;
        }
      },
      style: TabStyle.fixedCircle,
      backgroundColor: themeMode == "dark" ? Colors.black54 : Colors.white,
      color: themeMode == "dark" ? Colors.white : Colors.black54,
      activeColor: themeMode == "dark"
          ? ThemeData.dark().colorScheme.secondary
          : Colors.lightGreen,
    );
  }

  TabItem<Icon> _photo() {
    return const TabItem(
      icon: Icon(Icons.photo),
      title: "사진",
      isIconBlend: true,
    );
  }

  TabItem _list() {
    return const TabItem(
      icon: Icon(Icons.list),
      title: "분류",
      isIconBlend: true,
    );
  }

  TabItem _camera() {
    return const TabItem(
      icon: Icon(
        Icons.camera,
      ),
      title: "촬영",
      isIconBlend: true,
    );
  }

  TabItem _quiz() {
    return const TabItem(
      icon: Icon(Icons.quiz),
      title: "퀴즈",
      isIconBlend: true,
    );
  }

  TabItem _settings() {
    return const TabItem(
      icon: Icon(Icons.settings),
      title: "설정",
      isIconBlend: true,
    );
  }
}
