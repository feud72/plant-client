// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photos _$$_PhotosFromJson(Map<String, dynamic> json) => _$_Photos(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PhotosToJson(_$_Photos instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      id: json['id'] as int,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : Child.fromJson(json['family'] as Map<String, dynamic>),
      genus: json['genus'] == null
          ? null
          : Child.fromJson(json['genus'] as Map<String, dynamic>),
      species: json['species'] == null
          ? null
          : Child.fromJson(json['species'] as Map<String, dynamic>),
      uploadedAt: DateTime.parse(json['uploaded_at'] as String),
      url: json['url'] as String,
      thumbnail: json['thumbnail'] as String,
      resultPart: json['part'] as int,
      upvote: json['upvote'] as int,
      downvote: json['downvote'] as int,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      place: (json['place'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'family': instance.family,
      'genus': instance.genus,
      'species': instance.species,
      'uploaded_at': instance.uploadedAt.toIso8601String(),
      'url': instance.url,
      'thumbnail': instance.thumbnail,
      'part': instance.resultPart,
      'upvote': instance.upvote,
      'downvote': instance.downvote,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'place': instance.place,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      id: json['id'] as int,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

_$_SimplePhoto _$$_SimplePhotoFromJson(Map<String, dynamic> json) =>
    _$_SimplePhoto(
      id: json['id'] as int,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$_SimplePhotoToJson(_$_SimplePhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
    };
