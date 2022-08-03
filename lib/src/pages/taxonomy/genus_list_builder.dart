import 'package:beautiflower/models/genus.dart';
import 'package:beautiflower/src/components/family_genus_item.dart';
import 'package:beautiflower/src/services/model.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenusListWidget extends ConsumerWidget {
  const GenusListWidget({Key? key, required this.genera}) : super(key: key);

  final List<Genus> genera;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genusState = ref.watch(genusStateProvider.state);

    return SliverPadding(
      padding: const EdgeInsets.all(4.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        delegate: SliverChildBuilderDelegate(
          childCount: genera.length,
          (context, index) {
            final genus = genera[index];
            return FamilyGenusItem(
              itemCount: genus.children.length,
              element: genus,
              onTap: () {
                DefaultTabController.of(context)!.animateTo(2);
                ref.read(tabControllerIndexStateProvider.state).state = 2;
                genusState.update(
                  (state) => GenusState(
                    id: genus.id,
                    nameKor: genus.nameKor,
                    name: genus.name,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
