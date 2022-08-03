import 'dart:convert';

import 'package:beautiflower/models/base_list.dart';
import 'package:beautiflower/models/child.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photos.freezed.dart';
part 'photos.g.dart';

Photos photosFromJson(String str) => Photos.fromJson(json.decode(str));

String photosToJson(Photos data) => json.encode(data.toJson());

@freezed
class Photos with _$Photos {
  @With<BaseList<Photo>>()
  const factory Photos({
    required int count,
    required String? next,
    required String? previous,
    required List<Photo> results,
  }) = _Photos;

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}

@freezed
class Photo with _$Photo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Photo({
    required int id,
    required Owner? owner,
    required Child? family,
    required Child? genus,
    required Child? species,
    required DateTime uploadedAt,
    required String url,
    required String thumbnail,
    @JsonKey(name: "part") required int resultPart,
    required int upvote,
    required int downvote,
    required double? longitude,
    required double? latitude,
    required double? place,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class Owner with _$Owner {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Owner({
    required int id,
    required String username,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class SimplePhoto with _$SimplePhoto {
  const factory SimplePhoto({
    required int id,
    required String thumbnail,
  }) = _SimplePhoto;

  factory SimplePhoto.fromJson(Map<String, dynamic> json) =>
      _$SimplePhotoFromJson(json);
}
