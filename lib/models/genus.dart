import 'dart:convert';

import 'package:beautiflower/models/base_list.dart';
import 'package:beautiflower/models/child.dart';
import 'package:beautiflower/models/photos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genus.freezed.dart';
part 'genus.g.dart';

GenusList genusListFromJson(String str) => GenusList.fromJson(json.decode(str));

String genusListToJson(GenusList data) => json.encode(data.toJson());

@freezed
@With<BaseList<Genus>>()
class GenusList with _$GenusList {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GenusList({
    required int count,
    required String? next,
    required String? previous,
    required List<Genus> results,
  }) = _GenusList;

  factory GenusList.fromJson(Map<String, dynamic> json) =>
      _$GenusListFromJson(json);
}

List<Genus> genusFromJson(String str) =>
    List<Genus>.from(json.decode(str).map((x) => Genus.fromJson(x)));

String genusToJson(List<Genus> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class Genus with _$Genus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Genus({
    required int id,
    required String name,
    required String? nameKor,
    required List<SimplePhoto> photos,
    required List<Child> children,
  }) = _Genus;

  factory Genus.fromJson(Map<String, dynamic> json) => _$GenusFromJson(json);
}
