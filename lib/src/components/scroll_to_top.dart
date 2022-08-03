import 'package:flutter/material.dart';

class ScrollToTopButton extends StatelessWidget {
  const ScrollToTopButton({Key? key, required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: scrollController,
        builder: (context, child) {
          double scrollOffset = scrollController.offset;
          double? scrollMaxOffset =
              scrollController.position.hasContentDimensions
                  ? scrollController.position.maxScrollExtent
                  : null;
          return scrollOffset > MediaQuery.of(context).size.height
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.lightGreen.withOpacity(0.4),
                      foregroundColor: Colors.white.withOpacity(0.4),
                      mini: true,
                      onPressed: () async {
                        scrollController.animateTo(0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      tooltip: "위로 스크롤",
                      child: const Icon(Icons.arrow_upward),
                    ),
                    scrollMaxOffset != null
                        ? FloatingActionButton(
                            backgroundColor: Colors.lightGreen.withOpacity(0.4),
                            foregroundColor: Colors.white.withOpacity(0.4),
                            mini: true,
                            onPressed: () async {
                              scrollController.animateTo(scrollMaxOffset,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut);
                            },
                            tooltip: "아래로 스크롤",
                            child: const Icon(Icons.arrow_downward),
                          )
                        : const SizedBox.shrink(),
                  ],
                )
              : const SizedBox.shrink();
        });
  }
}
