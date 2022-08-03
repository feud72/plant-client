import 'package:beautiflower/src/components/search_bar.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaxonomyAppBarWidget extends ConsumerWidget {
  const TaxonomyAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final familyState = ref.watch(familyStateProvider.state);
    final speciesState = ref.watch(speciesStateProvider.state);
    final genusState = ref.watch(genusStateProvider.state);

    return SliverAppBar(
      pinned: true,
      title: const SearchBarWidget(),
      bottom: TabBar(
        indicatorColor: Colors.lightGreen,
        onTap: (int index) {
          switch (index) {
            case 0:
              familyState.state = null;
              genusState.state = null;
              speciesState.state = null;
              break;
            case 1:
              genusState.state = null;
              speciesState.state = null;
              break;
            case 2:
              speciesState.state = null;
              break;
          }
          ref.read(tabControllerIndexStateProvider.state).state = index;
        },
        tabs: <Widget>[
          _buildTab("과"),
          _buildTab("속"),
          _buildTab("종"),
        ],
      ),
    );
  }

  Tab _buildTab(String text) {
    return Tab(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black54,
        ),
      ),
    );
  }
}
