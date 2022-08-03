import 'package:beautiflower/models/species.dart';
import 'package:beautiflower/src/components/server_error.dart';
import 'package:beautiflower/src/components/spinner.dart';
import 'package:beautiflower/src/pages/taxonomy/species_list_builder.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpeciesListView extends ConsumerWidget {
  const SpeciesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speciesList = ref.watch(speciesListProvider);

    return speciesList.when(
      data: (species) {
        return SpeciesListWidget(species: species);
      },
      error: (err, s) =>
          SliverFillRemaining(child: ServerError(err: err!, s: s)),
      loading: () => const SliverFillRemaining(child: SpinnerWidget()),
      onGoingLoading: (List<Species> species) =>
          SpeciesListWidget(species: species),
      onGoingError: (List<Species> species, Object? e, StackTrace? stk) =>
          SpeciesListWidget(species: species),
    );
  }
}
