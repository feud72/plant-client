// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpeciesList _$SpeciesListFromJson(Map<String, dynamic> json) {
  return _SpeciesList.fromJson(json);
}

/// @nodoc
mixin _$SpeciesList {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Species> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesListCopyWith<SpeciesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesListCopyWith<$Res> {
  factory $SpeciesListCopyWith(
          SpeciesList value, $Res Function(SpeciesList) then) =
      _$SpeciesListCopyWithImpl<$Res>;
  $Res call({int count, String? next, String? previous, List<Species> results});
}

/// @nodoc
class _$SpeciesListCopyWithImpl<$Res> implements $SpeciesListCopyWith<$Res> {
  _$SpeciesListCopyWithImpl(this._value, this._then);

  final SpeciesList _value;
  // ignore: unused_field
  final $Res Function(SpeciesList) _then;

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
              as List<Species>,
    ));
  }
}

/// @nodoc
abstract class _$$_SpeciesListCopyWith<$Res>
    implements $SpeciesListCopyWith<$Res> {
  factory _$$_SpeciesListCopyWith(
          _$_SpeciesList value, $Res Function(_$_SpeciesList) then) =
      __$$_SpeciesListCopyWithImpl<$Res>;
  @override
  $Res call({int count, String? next, String? previous, List<Species> results});
}

/// @nodoc
class __$$_SpeciesListCopyWithImpl<$Res> extends _$SpeciesListCopyWithImpl<$Res>
    implements _$$_SpeciesListCopyWith<$Res> {
  __$$_SpeciesListCopyWithImpl(
      _$_SpeciesList _value, $Res Function(_$_SpeciesList) _then)
      : super(_value, (v) => _then(v as _$_SpeciesList));

  @override
  _$_SpeciesList get _value => super._value as _$_SpeciesList;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_SpeciesList(
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
              as List<Species>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SpeciesList implements _SpeciesList {
  const _$_SpeciesList(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<Species> results})
      : _results = results;

  factory _$_SpeciesList.fromJson(Map<String, dynamic> json) =>
      _$$_SpeciesListFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Species> _results;
  @override
  List<Species> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SpeciesList(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeciesList &&
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
  _$$_SpeciesListCopyWith<_$_SpeciesList> get copyWith =>
      __$$_SpeciesListCopyWithImpl<_$_SpeciesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeciesListToJson(
      this,
    );
  }
}

abstract class _SpeciesList implements SpeciesList {
  const factory _SpeciesList(
      {required final int count,
      required final String? next,
      required final String? previous,
      required final List<Species> results}) = _$_SpeciesList;

  factory _SpeciesList.fromJson(Map<String, dynamic> json) =
      _$_SpeciesList.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Species> get results;
  @override
  @JsonKey(ignore: true)
  _$$_SpeciesListCopyWith<_$_SpeciesList> get copyWith =>
      throw _privateConstructorUsedError;
}

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return _Species.fromJson(json);
}

/// @nodoc
mixin _$Species {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get nameKor => throw _privateConstructorUsedError;
  Child? get genus => throw _privateConstructorUsedError;
  Child? get family => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesCopyWith<Species> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String? nameKor,
      Child? genus,
      Child? family,
      List<Photo> photos});

  $ChildCopyWith<$Res>? get genus;
  $ChildCopyWith<$Res>? get family;
}

/// @nodoc
class _$SpeciesCopyWithImpl<$Res> implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  final Species _value;
  // ignore: unused_field
  final $Res Function(Species) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameKor = freezed,
    Object? genus = freezed,
    Object? family = freezed,
    Object? photos = freezed,
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
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as Child?,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Child?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }

  @override
  $ChildCopyWith<$Res>? get genus {
    if (_value.genus == null) {
      return null;
    }

    return $ChildCopyWith<$Res>(_value.genus!, (value) {
      return _then(_value.copyWith(genus: value));
    });
  }

  @override
  $ChildCopyWith<$Res>? get family {
    if (_value.family == null) {
      return null;
    }

    return $ChildCopyWith<$Res>(_value.family!, (value) {
      return _then(_value.copyWith(family: value));
    });
  }
}

/// @nodoc
abstract class _$$_SpeciesCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$$_SpeciesCopyWith(
          _$_Species value, $Res Function(_$_Species) then) =
      __$$_SpeciesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String? nameKor,
      Child? genus,
      Child? family,
      List<Photo> photos});

  @override
  $ChildCopyWith<$Res>? get genus;
  @override
  $ChildCopyWith<$Res>? get family;
}

/// @nodoc
class __$$_SpeciesCopyWithImpl<$Res> extends _$SpeciesCopyWithImpl<$Res>
    implements _$$_SpeciesCopyWith<$Res> {
  __$$_SpeciesCopyWithImpl(_$_Species _value, $Res Function(_$_Species) _then)
      : super(_value, (v) => _then(v as _$_Species));

  @override
  _$_Species get _value => super._value as _$_Species;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameKor = freezed,
    Object? genus = freezed,
    Object? family = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$_Species(
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
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as Child?,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Child?,
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Species implements _Species {
  const _$_Species(
      {required this.id,
      required this.name,
      required this.nameKor,
      required this.genus,
      required this.family,
      required final List<Photo> photos})
      : _photos = photos;

  factory _$_Species.fromJson(Map<String, dynamic> json) =>
      _$$_SpeciesFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? nameKor;
  @override
  final Child? genus;
  @override
  final Child? family;
  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'Species(id: $id, name: $name, nameKor: $nameKor, genus: $genus, family: $family, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Species &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nameKor, nameKor) &&
            const DeepCollectionEquality().equals(other.genus, genus) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nameKor),
      const DeepCollectionEquality().hash(genus),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  _$$_SpeciesCopyWith<_$_Species> get copyWith =>
      __$$_SpeciesCopyWithImpl<_$_Species>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeciesToJson(
      this,
    );
  }
}

abstract class _Species implements Species {
  const factory _Species(
      {required final int id,
      required final String name,
      required final String? nameKor,
      required final Child? genus,
      required final Child? family,
      required final List<Photo> photos}) = _$_Species;

  factory _Species.fromJson(Map<String, dynamic> json) = _$_Species.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get nameKor;
  @override
  Child? get genus;
  @override
  Child? get family;
  @override
  List<Photo> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_SpeciesCopyWith<_$_Species> get copyWith =>
      throw _privateConstructorUsedError;
}
