import 'package:beautiflower/src/services/pagination/pagination_notifier.dart';
import 'package:beautiflower/src/services/pagination/pagination_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OngoingBottomWidget extends StatelessWidget {
  const OngoingBottomWidget({Key? key, required this.provider})
      : super(key: key);

  final StateNotifierProvider<PaginationNotifier, PaginationState> provider;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(provider);
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            onGoingLoading: (items) => Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitFadingCircle(
                    color: Colors.lightGreen.withOpacity(0.5),
                    size: 12.0,
                  ),
                  const SizedBox(width: 8),
                  const Text("서버에서 데이터를 불러오고 있습니다."),
                ],
              ),
            ),
            onGoingError: (items, Object? e, StackTrace? stk) => Column(
              children: const [
                Icon(Icons.info),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Something went Wrong.",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
