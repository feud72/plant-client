import 'dart:async';

import 'package:beautiflower/src/services/pagination/pagination_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaginationNotifier<T> extends StateNotifier<PaginationState<T>> {
  PaginationNotifier({
    required this.fetchNextItems,
  }) : super(const PaginationState.loading());

  final Future Function(String? url) fetchNextItems;

  String? nextUrl;

  final List<T> _items = [];

  List<T> get items => _items;

  Timer _timer = Timer(const Duration(milliseconds: 0), () {});

  void init() {
    if (_items.isEmpty) {
      fetchFirstBatch();
    }
  }

  void updateData(List<T> result) {
    if (result.isEmpty) {
      state = PaginationState.data(_items);
    }
    state = PaginationState.data(_items..addAll(result));
  }

  Future<void> fetchFirstBatch() async {
    try {
      state = const PaginationState.loading();
      final result = _items.isEmpty
          ? await fetchNextItems(null)
          : await fetchNextItems(nextUrl);
      nextUrl = result.next;
      final data = result.results;
      updateData(data);
    } catch (e, stk) {
      state = PaginationState.error(e, stk);
    }
  }

  Future<void> fetchNextBatch() async {
    if (_timer.isActive) {
      return;
    }
    if (nextUrl == null) {
      return;
    }
    _timer = Timer(const Duration(milliseconds: 1000), () {});
    if (state == PaginationState<T>.onGoingLoading(_items)) {
      return;
    }
    state = PaginationState.onGoingLoading(_items);
    try {
      await Future.delayed(const Duration(seconds: 1));
      if (nextUrl == null) {
        return;
      }
      final result = await fetchNextItems(nextUrl);
      nextUrl = result.next;
      final data = result.results;
      updateData(data);
    } catch (e, stk) {
      state = PaginationState.onGoingError(_items, e, stk);
    }
  }
}
