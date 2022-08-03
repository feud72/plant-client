// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimpleUserModel _$SimpleUserModelFromJson(Map<String, dynamic> json) {
  return _SimpleUserModel.fromJson(json);
}

/// @nodoc
mixin _$SimpleUserModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleUserModelCopyWith<SimpleUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleUserModelCopyWith<$Res> {
  factory $SimpleUserModelCopyWith(
          SimpleUserModel value, $Res Function(SimpleUserModel) then) =
      _$SimpleUserModelCopyWithImpl<$Res>;
  $Res call({int id, String username});
}

/// @nodoc
class _$SimpleUserModelCopyWithImpl<$Res>
    implements $SimpleUserModelCopyWith<$Res> {
  _$SimpleUserModelCopyWithImpl(this._value, this._then);

  final SimpleUserModel _value;
  // ignore: unused_field
  final $Res Function(SimpleUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SimpleUserModelCopyWith<$Res>
    implements $SimpleUserModelCopyWith<$Res> {
  factory _$$_SimpleUserModelCopyWith(
          _$_SimpleUserModel value, $Res Function(_$_SimpleUserModel) then) =
      __$$_SimpleUserModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String username});
}

/// @nodoc
class __$$_SimpleUserModelCopyWithImpl<$Res>
    extends _$SimpleUserModelCopyWithImpl<$Res>
    implements _$$_SimpleUserModelCopyWith<$Res> {
  __$$_SimpleUserModelCopyWithImpl(
      _$_SimpleUserModel _value, $Res Function(_$_SimpleUserModel) _then)
      : super(_value, (v) => _then(v as _$_SimpleUserModel));

  @override
  _$_SimpleUserModel get _value => super._value as _$_SimpleUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_SimpleUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_SimpleUserModel implements _SimpleUserModel {
  const _$_SimpleUserModel({required this.id, required this.username});

  factory _$_SimpleUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_SimpleUserModelFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'SimpleUserModel(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimpleUserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_SimpleUserModelCopyWith<_$_SimpleUserModel> get copyWith =>
      __$$_SimpleUserModelCopyWithImpl<_$_SimpleUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimpleUserModelToJson(
      this,
    );
  }
}

abstract class _SimpleUserModel implements SimpleUserModel {
  const factory _SimpleUserModel(
      {required final int id,
      required final String username}) = _$_SimpleUserModel;

  factory _SimpleUserModel.fromJson(Map<String, dynamic> json) =
      _$_SimpleUserModel.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_SimpleUserModelCopyWith<_$_SimpleUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
