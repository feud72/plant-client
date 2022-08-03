import 'package:flutter/material.dart';

class TaxonomyTabBarElementWidget extends StatelessWidget {
  const TaxonomyTabBarElementWidget(
      {Key? key, required this.widget, required this.scrollController})
      : super(key: key);

  final List<Widget> widget;

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: widget,
      ),
      floatingActionButton: FloatingActionButton(
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
    );
  }
}
