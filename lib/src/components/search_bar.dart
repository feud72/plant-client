import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';

class SearchBarWidget extends ConsumerWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController =
        ref.watch(textEditingControllerProvider.state).state;
    final queryString = ref.watch(queryStringProvider.state);
    final familyState = ref.watch(familyStateProvider.state);
    final genusState = ref.watch(genusStateProvider.state);
    final speciesState = ref.watch(speciesStateProvider.state);
    final taxonomyLabel = join(familyState.state?.nameKor ?? "",
        genusState.state?.nameKor ?? "", speciesState.state?.nameKor ?? "");

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: textEditingController,
            maxLines: 1,
            decoration: InputDecoration(
              icon: const Icon(
                Icons.search,
                color: Colors.lightGreen,
              ),
              isDense: true,
              border: InputBorder.none,
              labelText: queryString.state.isNotEmpty ||
                      taxonomyLabel.isNotEmpty
                  ? "${queryString.state} ${taxonomyLabel.isNotEmpty ? '($taxonomyLabel)' : ""}"
                  : "검색어를 입력해 주세요.",
              hintText: "예) 국화, 수국, ...",
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (String text) {
              queryString.state = text;
              genusState.update((state) => null);
              familyState.update((state) => null);
              speciesState.update((state) => null);
              textEditingController.clear();
            },
          ),
        ),
        TextButton(
          onPressed: () {
            queryString.state = "";
            genusState.update((state) => null);
            familyState.update((state) => null);
            speciesState.update((state) => null);
            textEditingController.clear();
          },
          child: const Text("초기화"),
        ),
      ],
    );
  }
}
