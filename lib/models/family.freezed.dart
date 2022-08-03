// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FamilyModel _$FamilyModelFromJson(Map<String, dynamic> json) {
  return _FamilyModel.fromJson(json);
}

/// @nodoc
mixin _$FamilyModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get nameKor => throw _privateConstructorUsedError;
  List<SimplePhoto>? get photos => throw _privateConstructorUsedError;
  List<Child>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyModelCopyWith<FamilyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyModelCopyWith<$Res> {
  factory $FamilyModelCopyWith(
          FamilyModel value, $Res Function(FamilyModel) then) =
      _$FamilyModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String? nameKor,
      List<SimplePhoto>? photos,
      List<Child>? children});
}

/// @nodoc
class _$FamilyModelCopyWithImpl<$Res> implements $FamilyModelCopyWith<$Res> {
  _$FamilyModelCopyWithImpl(this._value, this._then);

  final FamilyModel _value;
  // ignore: unused_field
  final $Res Function(FamilyModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameKor = freezed,
    Object? photos = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameKor: nameKor == freezed
          ? _value.nameKor
          : nameKor // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<SimplePhoto>?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FamilyModelCopyWith<$Res>
    implements $FamilyModelCopyWith<$Res> {
  factory _$$_FamilyModelCopyWith(
          _$_FamilyModel value, $Res Function(_$_FamilyModel) then) =
      __$$_FamilyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String? nameKor,
      List<SimplePhoto>? photos,
      List<Child>? children});
}

/// @nodoc
class __$$_FamilyModelCopyWithImpl<$Res> extends _$FamilyModelCopyWithImpl<$Res>
    implements _$$_FamilyModelCopyWith<$Res> {
  __$$_FamilyModelCopyWithImpl(
      _$_FamilyModel _value, $Res Function(_$_FamilyModel) _then)
      : super(_value, (v) => _then(v as _$_FamilyModel));

  @override
  _$_FamilyModel get _value => super._value as _$_FamilyModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameKor = freezed,
    Object? photos = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_FamilyModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameKor: nameKor == freezed
          ? _value.nameKor
          : nameKor // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<SimplePhoto>?,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Child>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_FamilyModel implements _FamilyModel {
  const _$_FamilyModel(
      {required this.id,
      required this.name,
      required this.nameKor,
      required final List<SimplePhoto>? photos,
      required final List<Child>? children})
      : _photos = photos,
        _children = children;

  factory _$_FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$$_FamilyModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? nameKor;
  final List<SimplePhoto>? _photos;
  @override
  List<SimplePhoto>? get photos {
    final value = _photos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Child>? _children;
  @override
  List<Child>? get children {
    final value = _children;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FamilyModel(id: $id, name: $name, nameKor: $nameKor, photos: $photos, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilyModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nameKor, nameKor) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nameKor),
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$_FamilyModelCopyWith<_$_FamilyModel> get copyWith =>
      __$$_FamilyModelCopyWithImpl<_$_FamilyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FamilyModelToJson(
      this,
    );
  }
}

abstract class _FamilyModel implements FamilyModel {
  const factory _FamilyModel(
      {required final int id,
      required final String name,
      required final String? nameKor,
      required final List<SimplePhoto>? photos,
      required final List<Child>? children}) = _$_FamilyModel;

  factory _FamilyModel.fromJson(Map<String, dynamic> json) =
      _$_FamilyModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get nameKor;
  @override
  List<SimplePhoto>? get photos;
  @override
  List<Child>? get children;
  @override
  @JsonKey(ignore: true)
  _$$_FamilyModelCopyWith<_$_FamilyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
