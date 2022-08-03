import 'dart:convert';

import 'package:beautiflower/models/child.dart';
import 'package:beautiflower/models/photos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

List<FamilyModel> familyModelFromJson(String str) => List<FamilyModel>.from(
    json.decode(str).map((x) => FamilyModel.fromJson(x)));

String familyModelToJson(List<FamilyModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FamilyModel with _$FamilyModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory FamilyModel({
    required int id,
    required String name,
    required String? nameKor,
    required List<SimplePhoto>? photos,
    required List<Child>? children,
  }) = _FamilyModel;

  factory FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyModelFromJson(json);
}
