// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenusList _$GenusListFromJson(Map<String, dynamic> json) {
  return _GenusList.fromJson(json);
}

/// @nodoc
mixin _$GenusList {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Genus> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenusListCopyWith<GenusList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenusListCopyWith<$Res> {
  factory $GenusListCopyWith(GenusList value, $Res Function(GenusList) then) =
      _$GenusListCopyWithImpl<$Res>;
  $Res call({int count, String? next, String? previous, List<Genus> results});
}

/// @nodoc
class _$GenusListCopyWithImpl<$Res> implements $GenusListCopyWith<$Res> {
  _$GenusListCopyWithImpl(this._value, this._then);

  final GenusList _value;
  // ignore: unused_field
  final $Res Function(GenusList) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Genus>,
    ));
  }
}

/// @nodoc
abstract class _$$_GenusListCopyWith<$Res> implements $GenusListCopyWith<$Res> {
  factory _$$_GenusListCopyWith(
          _$_GenusList value, $Res Function(_$_GenusList) then) =
      __$$_GenusListCopyWithImpl<$Res>;
  @override
  $Res call({int count, String? next, String? previous, List<Genus> results});
}

/// @nodoc
class __$$_GenusListCopyWithImpl<$Res> extends _$GenusListCopyWithImpl<$Res>
    implements _$$_GenusListCopyWith<$Res> {
  __$$_GenusListCopyWithImpl(
      _$_GenusList _value, $Res Function(_$_GenusList) _then)
      : super(_value, (v) => _then(v as _$_GenusList));

  @override
  _$_GenusList get _value => super._value as _$_GenusList;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_GenusList(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Genus>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GenusList implements _GenusList {
  const _$_GenusList(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<Genus> results})
      : _results = results;

  factory _$_GenusList.fromJson(Map<String, dynamic> json) =>
      _$$_GenusListFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Genus> _results;
  @override
  List<Genus> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GenusList(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenusList &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_GenusListCopyWith<_$_GenusList> get copyWith =>
      __$$_GenusListCopyWithImpl<_$_GenusList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenusListToJson(
      this,
    );
  }
}

abstract class _GenusList implements GenusList {
  const factory _GenusList(
      {required final int count,
      required final String? next,
      required final String? previous,
      required final List<Genus> results}) = _$_GenusList;

  factory _GenusList.fromJson(Map<String, dynamic> json) =
      _$_GenusList.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Genus> get results;
  @override
  @JsonKey(ignore: true)
  _$$_GenusListCopyWith<_$_GenusList> get copyWith =>
      throw _privateConstructorUsedError;
}

Genus _$GenusFromJson(Map<String, dynamic> json) {
  return _Genus.fromJson(json);
}

/// @nodoc
mixin _$Genus {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get nameKor => throw _privateConstructorUsedError;
  List<SimplePhoto> get photos => throw _privateConstructorUsedError;
  List<Child> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenusCopyWith<Genus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenusCopyWith<$Res> {
  factory $GenusCopyWith(Genus value, $Res Function(Genus) then) =
      _$GenusCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String? nameKor,
      List<SimplePhoto> photos,
      List<Child> children});
}

/// @nodoc
class _$GenusCopyWithImpl<$Res> implements $GenusCopyWith<$Res> {
  _$GenusCopyWithImpl(this._value, this._then);

  final Genus _value;
  // ignore: unused_field
  final $Res Function(Genus) _then;

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
              as List<SimplePhoto>,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Child>,
    ));
  }
}

/// @nodoc
abstract class _$$_GenusCopyWith<$Res> implements $GenusCopyWith<$Res> {
  factory _$$_GenusCopyWith(_$_Genus value, $Res Function(_$_Genus) then) =
      __$$_GenusCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String? nameKor,
      List<SimplePhoto> photos,
      List<Child> children});
}

/// @nodoc
class __$$_GenusCopyWithImpl<$Res> extends _$GenusCopyWithImpl<$Res>
    implements _$$_GenusCopyWith<$Res> {
  __$$_GenusCopyWithImpl(_$_Genus _value, $Res Function(_$_Genus) _then)
      : super(_value, (v) => _then(v as _$_Genus));

  @override
  _$_Genus get _value => super._value as _$_Genus;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameKor = freezed,
    Object? photos = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_Genus(
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
              as List<SimplePhoto>,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Child>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Genus implements _Genus {
  const _$_Genus(
      {required this.id,
      required this.name,
      required this.nameKor,
      required final List<SimplePhoto> photos,
      required final List<Child> children})
      : _photos = photos,
        _children = children;

  factory _$_Genus.fromJson(Map<String, dynamic> json) =>
      _$$_GenusFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? nameKor;
  final List<SimplePhoto> _photos;
  @override
  List<SimplePhoto> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final List<Child> _children;
  @override
  List<Child> get children {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Genus(id: $id, name: $name, nameKor: $nameKor, photos: $photos, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Genus &&
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
  _$$_GenusCopyWith<_$_Genus> get copyWith =>
      __$$_GenusCopyWithImpl<_$_Genus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenusToJson(
      this,
    );
  }
}

abstract class _Genus implements Genus {
  const factory _Genus(
      {required final int id,
      required final String name,
      required final String? nameKor,
      required final List<SimplePhoto> photos,
      required final List<Child> children}) = _$_Genus;

  factory _Genus.fromJson(Map<String, dynamic> json) = _$_Genus.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get nameKor;
  @override
  List<SimplePhoto> get photos;
  @override
  List<Child> get children;
  @override
  @JsonKey(ignore: true)
  _$$_GenusCopyWith<_$_Genus> get copyWith =>
      throw _privateConstructorUsedError;
}
