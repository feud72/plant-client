import 'package:beautiflower/src/components/scroll_bottom_widget.dart';
import 'package:beautiflower/src/components/scroll_no_more_widget.dart';
import 'package:beautiflower/src/components/scroll_to_top.dart';
import 'package:beautiflower/src/components/search_bar.dart';
import 'package:beautiflower/src/pages/photo/photo_list.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhotoViewerPage extends ConsumerWidget {
  const PhotoViewerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = ScrollController();

    scrollController.addListener(() {
      double maxScroll = scrollController.position.maxScrollExtent;
      double currentScroll = scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        ref.read(photosProvider.notifier).fetchNextBatch();
      }
    });

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        slivers: [
          const SliverAppBar(
            title: SearchBarWidget(),
            floating: true,
          ),
          const PhotoList(),
          OngoingBottomWidget(
            provider: photosProvider,
          ),
          NoMoreItems(provider: photosProvider),
        ],
      ),
      floatingActionButton: ScrollToTopButton(
        scrollController: scrollController,
      ),
    );
  }
}
