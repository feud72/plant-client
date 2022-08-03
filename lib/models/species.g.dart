// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpeciesList _$$_SpeciesListFromJson(Map<String, dynamic> json) =>
    _$_SpeciesList(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Species.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpeciesListToJson(_$_SpeciesList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Species _$$_SpeciesFromJson(Map<String, dynamic> json) => _$_Species(
      id: json['id'] as int,
      name: json['name'] as String,
      nameKor: json['name_kor'] as String?,
      genus: json['genus'] == null
          ? null
          : Child.fromJson(json['genus'] as Map<String, dynamic>),
      family: json['family'] == null
          ? null
          : Child.fromJson(json['family'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpeciesToJson(_$_Species instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_kor': instance.nameKor,
      'genus': instance.genus,
      'family': instance.family,
      'photos': instance.photos,
    };
