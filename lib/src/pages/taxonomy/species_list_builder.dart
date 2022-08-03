import 'package:beautiflower/models/species.dart';
import 'package:beautiflower/src/components/species_item.dart';
import 'package:beautiflower/src/services/model.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpeciesListWidget extends ConsumerWidget {
  const SpeciesListWidget({Key? key, required this.species}) : super(key: key);
  final List<Species> species;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speciesState = ref.watch(speciesStateProvider.state);

    return SliverPadding(
      padding: const EdgeInsets.all(4.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 3,
        ),
        delegate: SliverChildBuilderDelegate(childCount: species.length,
            (context, index) {
          final element = species[index];
          return SpeciesItem(
            species: element,
            onTap: () {
              speciesState.update((state) => SpeciesState(
                  id: element.id,
                  nameKor: element.nameKor,
                  name: element.name));
            },
          );
        }),
      ),
    );
  }
}
