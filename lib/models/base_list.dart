abstract class BaseList<T> {
  int get count;

  String? get next;

  String? get previous;

  List<T> get results;
}

// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'base_list.freezed.dart';
//
// @freezed
// abstract class BaseList<T> with _$BaseList<T> {
//   const factory BaseList({
//     required int count,
//     required String? next,
//     required String? previous,
//     required List<T> results,
//   }) = _BaseList<T>;
// }
