import 'package:beautiflower/src/services/pagination/pagination_notifier.dart';
import 'package:beautiflower/src/services/pagination/pagination_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoMoreItems extends ConsumerWidget {
  const NoMoreItems({Key? key, required this.provider}) : super(key: key);

  final StateNotifierProvider<PaginationNotifier, PaginationState> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(provider);

    return SliverToBoxAdapter(
      child: state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (items) {
            final notifier = ref.read(provider.notifier);
            return notifier.nextUrl == null
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Center(
                        child: Text(
                            "${notifier.items.length}개의 자료를 찾았습니다. 검색을 완료하였습니다.")),
                  )
                : const SizedBox.shrink();
          }),
    );
  }
}
