import 'package:beautiflower/models/genus.dart';
import 'package:beautiflower/src/components/server_error.dart';
import 'package:beautiflower/src/components/spinner.dart';
import 'package:beautiflower/src/pages/taxonomy/genus_list_builder.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenusListView extends ConsumerWidget {
  const GenusListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genusList = ref.watch(genusListProvider);

    return genusList.when(
      data: (List<Genus> genera) {
        return GenusListWidget(genera: genera);
      },
      error: (err, s) =>
          SliverFillRemaining(child: ServerError(err: err!, s: s)),
      loading: () => const SliverFillRemaining(child: SpinnerWidget()),
      onGoingLoading: (List<Genus> genera) => GenusListWidget(genera: genera),
      onGoingError: (List<Genus> genera, Object? e, StackTrace? stk) =>
          GenusListWidget(genera: genera),
    );
  }
}
