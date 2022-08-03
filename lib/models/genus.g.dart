// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenusList _$$_GenusListFromJson(Map<String, dynamic> json) => _$_GenusList(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Genus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GenusListToJson(_$_GenusList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Genus _$$_GenusFromJson(Map<String, dynamic> json) => _$_Genus(
      id: json['id'] as int,
      name: json['name'] as String,
      nameKor: json['name_kor'] as String?,
      photos: (json['photos'] as List<dynamic>)
          .map((e) => SimplePhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>)
          .map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GenusToJson(_$_Genus instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_kor': instance.nameKor,
      'photos': instance.photos,
      'children': instance.children,
    };
