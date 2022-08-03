import 'package:beautiflower/src/components/bottom_navigation.dart';
import 'package:beautiflower/src/pages/camera_page.dart';
import 'package:beautiflower/src/pages/photo/photo_main.dart';
import 'package:beautiflower/src/pages/quiz/quiz_main.dart';
import 'package:beautiflower/src/pages/settings_page.dart';
import 'package:beautiflower/src/pages/taxonomy/taxonomy_main.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final screens = [
  const PhotoViewerPage(),
  const TaxonomyListPage(),
  const CameraPage(),
  const QuizPage(),
  const SettingsPage(),
];

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backPressTime = ref.watch(backPressTimeProvider.state);
    final familyState = ref.watch(familyStateProvider.state);
    final genusState = ref.watch(genusStateProvider.state);
    final speciesState = ref.watch(speciesStateProvider.state);
    final queryString = ref.watch(queryStringProvider.state);
    final taxonomyTabIndex = ref.watch(tabControllerIndexStateProvider.state);
    final pageController = ref.watch(pageControllerProvider);

    Future<bool> onWillPop() {
      genusState.update((state) => null);
      familyState.update((state) => null);
      speciesState.update((state) => null);
      queryString.state = "";
      taxonomyTabIndex.state = 0;
      var now = DateTime.now();
      if (now.difference(backPressTime.state) > const Duration(seconds: 4)) {
        backPressTime.state = now;

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            margin: EdgeInsets.only(bottom: 36, right: 16, left: 16),
            behavior: SnackBarBehavior.floating,
            content: Text(
              '뒤로 가기를 한 번 더 누르면 앱이 종료됩니다.',
            ),
            duration: Duration(seconds: 4),
          ),
        );
        return Future.value(false);
      }
      return Future.value(true);
    }

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: screens
            .map((screen) => screen == screens[1]
                ? screen
                : WillPopScope(onWillPop: onWillPop, child: screen))
            .toList(),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
    // bottomNavigationBar:
  }
}
