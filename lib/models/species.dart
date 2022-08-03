import 'dart:convert';

import 'package:beautiflower/models/base_list.dart';
import 'package:beautiflower/models/child.dart';
import 'package:beautiflower/models/photos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';
part 'species.g.dart';

SpeciesList speciesListFromJson(String str) =>
    SpeciesList.fromJson(json.decode(str));

String speciesListToJson(SpeciesList data) => json.encode(data.toJson());

@freezed
@With<BaseList<Species>>()
class SpeciesList with _$SpeciesList {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SpeciesList({
    required int count,
    required String? next,
    required String? previous,
    required List<Species> results,
  }) = _SpeciesList;

  factory SpeciesList.fromJson(Map<String, dynamic> json) =>
      _$SpeciesListFromJson(json);
}

@freezed
class Species with _$Species {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Species({
    required int id,
    required String name,
    required String? nameKor,
    required Child? genus,
    required Child? family,
    required List<Photo> photos,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
}
