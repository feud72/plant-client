import 'package:beautiflower/src/components/scroll_bottom_widget.dart';
import 'package:beautiflower/src/components/scroll_no_more_widget.dart';
import 'package:beautiflower/src/pages/taxonomy/family_list.dart';
import 'package:beautiflower/src/pages/taxonomy/genus_list.dart';
import 'package:beautiflower/src/pages/taxonomy/species_list.dart';
import 'package:beautiflower/src/pages/taxonomy/taxonomy_tab_element.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabBarBodyWidget extends ConsumerWidget {
  TabBarBodyWidget({
    Key? key,
  }) : super(key: key);

  final ScrollController scrollController = ScrollController();

  final tabBarWidgets = [
    [
      const FamilyListView(),
    ],
    [
      const GenusListView(),
      OngoingBottomWidget(
        provider: genusListProvider,
      ),
      NoMoreItems(provider: genusListProvider),
    ],
    [
      const SpeciesListView(),
      OngoingBottomWidget(
        provider: speciesListProvider,
      ),
      NoMoreItems(provider: speciesListProvider),
    ],
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    scrollController.addListener(() {
      double maxScroll = scrollController.position.maxScrollExtent;
      double currentScroll = scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(tabControllerIndexStateProvider.state).state == 1) {
          ref.read(genusListProvider.notifier).fetchNextBatch();
        }
        if (ref.read(tabControllerIndexStateProvider.state).state == 2) {
          ref.read(speciesListProvider.notifier).fetchNextBatch();
        }
      }
    });

    final tabController = DefaultTabController.of(context)!;
    final tabIndexProvider = ref.watch(tabControllerIndexStateProvider.state);
    tabIndexProvider.state = tabController.index;
    final queryString = ref.watch(queryStringProvider.state);
    final backPressTime = ref.watch(backPressTimeProvider.state);

    Future<bool> onWillPop() {
      if (tabController.index > 0) {
        tabController.animateTo(tabController.index - 1);
        tabIndexProvider.state = tabController.index;

        return Future.value(false);
      } else {
        queryString.state = "";
      }

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

    return WillPopScope(
      onWillPop: onWillPop,
      child: TabBarView(
        children: tabBarWidgets
            .map(
              (tab) => Builder(
                builder: (BuildContext context) {
                  return TaxonomyTabBarElementWidget(
                    widget: tab,
                    scrollController: scrollController,
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
