// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'child.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Child _$ChildFromJson(Map<String, dynamic> json) {
  return _Child.fromJson(json);
}

/// @nodoc
mixin _$Child {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get nameKor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCopyWith<Child> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCopyWith<$Res> {
  factory $ChildCopyWith(Child value, $Res Function(Child) then) =
      _$ChildCopyWithImpl<$Res>;
  $Res call({int id, String name, String? nameKor});
}

/// @nodoc
class _$ChildCopyWithImpl<$Res> implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._value, this._then);

  final Child _value;
  // ignore: unused_field
  final $Res Function(Child) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameKor = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_ChildCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$$_ChildCopyWith(_$_Child value, $Res Function(_$_Child) then) =
      __$$_ChildCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String? nameKor});
}

/// @nodoc
class __$$_ChildCopyWithImpl<$Res> extends _$ChildCopyWithImpl<$Res>
    implements _$$_ChildCopyWith<$Res> {
  __$$_ChildCopyWithImpl(_$_Child _value, $Res Function(_$_Child) _then)
      : super(_value, (v) => _then(v as _$_Child));

  @override
  _$_Child get _value => super._value as _$_Child;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameKor = freezed,
  }) {
    return _then(_$_Child(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Child implements _Child {
  const _$_Child({required this.id, required this.name, required this.nameKor});

  factory _$_Child.fromJson(Map<String, dynamic> json) =>
      _$$_ChildFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? nameKor;

  @override
  String toString() {
    return 'Child(id: $id, name: $name, nameKor: $nameKor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Child &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nameKor, nameKor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nameKor));

  @JsonKey(ignore: true)
  @override
  _$$_ChildCopyWith<_$_Child> get copyWith =>
      __$$_ChildCopyWithImpl<_$_Child>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildToJson(
      this,
    );
  }
}

abstract class _Child implements Child {
  const factory _Child(
      {required final int id,
      required final String name,
      required final String? nameKor}) = _$_Child;

  factory _Child.fromJson(Map<String, dynamic> json) = _$_Child.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get nameKor;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCopyWith<_$_Child> get copyWith =>
      throw _privateConstructorUsedError;
}
