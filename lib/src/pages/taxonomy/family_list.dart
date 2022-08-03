import 'package:beautiflower/models/family.dart';
import 'package:beautiflower/src/components/family_genus_item.dart';
import 'package:beautiflower/src/components/server_error.dart';
import 'package:beautiflower/src/components/spinner.dart';
import 'package:beautiflower/src/services/model.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FamilyListView extends ConsumerWidget {
  const FamilyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(queryStringProvider.state).state;
    final data = ref.watch(familyListProvider(query));
    final familyState = ref.watch(familyStateProvider.state);
    final genusState = ref.watch(genusStateProvider.state);

    return data.when(
      data: (List<FamilyModel> families) {
        return SliverPadding(
          padding: const EdgeInsets.all(4.0),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
            ),
            delegate: SliverChildBuilderDelegate(childCount: families.length,
                (context, index) {
              final family = families[index];
              return FamilyGenusItem(
                itemCount: families[index].children!.length,
                element: family,
                onTap: () {
                  familyState.update((state) => FamilyState(
                      id: family.id,
                      nameKor: family.nameKor,
                      name: family.name));
                  if (genusState.state != null) {
                    genusState.update((state) => null);
                  }
                  DefaultTabController.of(context)!.animateTo(1);
                  ref.read(tabControllerIndexStateProvider.state).state = 1;
                },
              );
            }),
          ),
        );
      },
      error: (err, s) =>
          SliverFillRemaining(child: ServerError(err: err, s: s)),
      loading: () => const SliverFillRemaining(child: SpinnerWidget()),
    );
  }
}
