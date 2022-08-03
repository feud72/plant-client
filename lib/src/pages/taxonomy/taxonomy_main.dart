import 'package:beautiflower/src/pages/taxonomy/taxonomy_appbar.dart';
import 'package:beautiflower/src/pages/taxonomy/taxonomy_body.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaxonomyListPage extends ConsumerWidget {
  const TaxonomyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      initialIndex: ref.read(tabControllerIndexStateProvider.state).state,
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [const TaxonomyAppBarWidget()],
        body: TabBarBodyWidget(),
        // FamilyListView(),
      ),
    );
  }
}
