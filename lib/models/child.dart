import 'package:freezed_annotation/freezed_annotation.dart';

part 'child.freezed.dart';
part 'child.g.dart';

@freezed
class Child with _$Child {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Child({
    required int id,
    required String name,
    required String? nameKor,
  }) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
}
