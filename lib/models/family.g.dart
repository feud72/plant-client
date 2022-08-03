// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FamilyModel _$$_FamilyModelFromJson(Map<String, dynamic> json) =>
    _$_FamilyModel(
      id: json['id'] as int,
      name: json['name'] as String,
      nameKor: json['name_kor'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => SimplePhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FamilyModelToJson(_$_FamilyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_kor': instance.nameKor,
      'photos': instance.photos,
      'children': instance.children,
    };
