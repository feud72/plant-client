// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photos _$PhotosFromJson(Map<String, dynamic> json) {
  return _Photos.fromJson(json);
}

/// @nodoc
mixin _$Photos {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Photo> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosCopyWith<Photos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosCopyWith<$Res> {
  factory $PhotosCopyWith(Photos value, $Res Function(Photos) then) =
      _$PhotosCopyWithImpl<$Res>;
  $Res call({int count, String? next, String? previous, List<Photo> results});
}

/// @nodoc
class _$PhotosCopyWithImpl<$Res> implements $PhotosCopyWith<$Res> {
  _$PhotosCopyWithImpl(this._value, this._then);

  final Photos _value;
  // ignore: unused_field
  final $Res Function(Photos) _then;

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
              as List<Photo>,
    ));
  }
}

/// @nodoc
abstract class _$$_PhotosCopyWith<$Res> implements $PhotosCopyWith<$Res> {
  factory _$$_PhotosCopyWith(_$_Photos value, $Res Function(_$_Photos) then) =
      __$$_PhotosCopyWithImpl<$Res>;
  @override
  $Res call({int count, String? next, String? previous, List<Photo> results});
}

/// @nodoc
class __$$_PhotosCopyWithImpl<$Res> extends _$PhotosCopyWithImpl<$Res>
    implements _$$_PhotosCopyWith<$Res> {
  __$$_PhotosCopyWithImpl(_$_Photos _value, $Res Function(_$_Photos) _then)
      : super(_value, (v) => _then(v as _$_Photos));

  @override
  _$_Photos get _value => super._value as _$_Photos;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Photos(
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
              as List<Photo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photos with BaseList<Photo> implements _Photos {
  const _$_Photos(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<Photo> results})
      : _results = results;

  factory _$_Photos.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Photo> _results;
  @override
  List<Photo> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Photos(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photos &&
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
  _$$_PhotosCopyWith<_$_Photos> get copyWith =>
      __$$_PhotosCopyWithImpl<_$_Photos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotosToJson(
      this,
    );
  }
}

abstract class _Photos implements Photos, BaseList<Photo> {
  const factory _Photos(
      {required final int count,
      required final String? next,
      required final String? previous,
      required final List<Photo> results}) = _$_Photos;

  factory _Photos.fromJson(Map<String, dynamic> json) = _$_Photos.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Photo> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosCopyWith<_$_Photos> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  int get id => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  Child? get family => throw _privateConstructorUsedError;
  Child? get genus => throw _privateConstructorUsedError;
  Child? get species => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "part")
  int get resultPart => throw _privateConstructorUsedError;
  int get upvote => throw _privateConstructorUsedError;
  int get downvote => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Owner? owner,
      Child? family,
      Child? genus,
      Child? species,
      DateTime uploadedAt,
      String url,
      String thumbnail,
      @JsonKey(name: "part") int resultPart,
      int upvote,
      int downvote,
      double? longitude,
      double? latitude,
      double? place});

  $OwnerCopyWith<$Res>? get owner;
  $ChildCopyWith<$Res>? get family;
  $ChildCopyWith<$Res>? get genus;
  $ChildCopyWith<$Res>? get species;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? family = freezed,
    Object? genus = freezed,
    Object? species = freezed,
    Object? uploadedAt = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
    Object? resultPart = freezed,
    Object? upvote = freezed,
    Object? downvote = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Child?,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as Child?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Child?,
      uploadedAt: uploadedAt == freezed
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      resultPart: resultPart == freezed
          ? _value.resultPart
          : resultPart // ignore: cast_nullable_to_non_nullable
              as int,
      upvote: upvote == freezed
          ? _value.upvote
          : upvote // ignore: cast_nullable_to_non_nullable
              as int,
      downvote: downvote == freezed
          ? _value.downvote
          : downvote // ignore: cast_nullable_to_non_nullable
              as int,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
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
  $ChildCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $ChildCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value));
    });
  }
}

/// @nodoc
abstract class _$$_PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$_PhotoCopyWith(_$_Photo value, $Res Function(_$_Photo) then) =
      __$$_PhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Owner? owner,
      Child? family,
      Child? genus,
      Child? species,
      DateTime uploadedAt,
      String url,
      String thumbnail,
      @JsonKey(name: "part") int resultPart,
      int upvote,
      int downvote,
      double? longitude,
      double? latitude,
      double? place});

  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $ChildCopyWith<$Res>? get family;
  @override
  $ChildCopyWith<$Res>? get genus;
  @override
  $ChildCopyWith<$Res>? get species;
}

/// @nodoc
class __$$_PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$$_PhotoCopyWith<$Res> {
  __$$_PhotoCopyWithImpl(_$_Photo _value, $Res Function(_$_Photo) _then)
      : super(_value, (v) => _then(v as _$_Photo));

  @override
  _$_Photo get _value => super._value as _$_Photo;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? family = freezed,
    Object? genus = freezed,
    Object? species = freezed,
    Object? uploadedAt = freezed,
    Object? url = freezed,
    Object? thumbnail = freezed,
    Object? resultPart = freezed,
    Object? upvote = freezed,
    Object? downvote = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? place = freezed,
  }) {
    return _then(_$_Photo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Child?,
      genus: genus == freezed
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as Child?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Child?,
      uploadedAt: uploadedAt == freezed
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      resultPart: resultPart == freezed
          ? _value.resultPart
          : resultPart // ignore: cast_nullable_to_non_nullable
              as int,
      upvote: upvote == freezed
          ? _value.upvote
          : upvote // ignore: cast_nullable_to_non_nullable
              as int,
      downvote: downvote == freezed
          ? _value.downvote
          : downvote // ignore: cast_nullable_to_non_nullable
              as int,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Photo implements _Photo {
  const _$_Photo(
      {required this.id,
      required this.owner,
      required this.family,
      required this.genus,
      required this.species,
      required this.uploadedAt,
      required this.url,
      required this.thumbnail,
      @JsonKey(name: "part") required this.resultPart,
      required this.upvote,
      required this.downvote,
      required this.longitude,
      required this.latitude,
      required this.place});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

  @override
  final int id;
  @override
  final Owner? owner;
  @override
  final Child? family;
  @override
  final Child? genus;
  @override
  final Child? species;
  @override
  final DateTime uploadedAt;
  @override
  final String url;
  @override
  final String thumbnail;
  @override
  @JsonKey(name: "part")
  final int resultPart;
  @override
  final int upvote;
  @override
  final int downvote;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final double? place;

  @override
  String toString() {
    return 'Photo(id: $id, owner: $owner, family: $family, genus: $genus, species: $species, uploadedAt: $uploadedAt, url: $url, thumbnail: $thumbnail, resultPart: $resultPart, upvote: $upvote, downvote: $downvote, longitude: $longitude, latitude: $latitude, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.genus, genus) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality()
                .equals(other.uploadedAt, uploadedAt) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality()
                .equals(other.resultPart, resultPart) &&
            const DeepCollectionEquality().equals(other.upvote, upvote) &&
            const DeepCollectionEquality().equals(other.downvote, downvote) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.place, place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(genus),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(uploadedAt),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(resultPart),
      const DeepCollectionEquality().hash(upvote),
      const DeepCollectionEquality().hash(downvote),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(place));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      __$$_PhotoCopyWithImpl<_$_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo(
      {required final int id,
      required final Owner? owner,
      required final Child? family,
      required final Child? genus,
      required final Child? species,
      required final DateTime uploadedAt,
      required final String url,
      required final String thumbnail,
      @JsonKey(name: "part") required final int resultPart,
      required final int upvote,
      required final int downvote,
      required final double? longitude,
      required final double? latitude,
      required final double? place}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  int get id;
  @override
  Owner? get owner;
  @override
  Child? get family;
  @override
  Child? get genus;
  @override
  Child? get species;
  @override
  DateTime get uploadedAt;
  @override
  String get url;
  @override
  String get thumbnail;
  @override
  @JsonKey(name: "part")
  int get resultPart;
  @override
  int get upvote;
  @override
  int get downvote;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  double? get place;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res>;
  $Res call({int id, String username});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res> implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  final Owner _value;
  // ignore: unused_field
  final $Res Function(Owner) _then;

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
abstract class _$$_OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$_OwnerCopyWith(_$_Owner value, $Res Function(_$_Owner) then) =
      __$$_OwnerCopyWithImpl<$Res>;
  @override
  $Res call({int id, String username});
}

/// @nodoc
class __$$_OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res>
    implements _$$_OwnerCopyWith<$Res> {
  __$$_OwnerCopyWithImpl(_$_Owner _value, $Res Function(_$_Owner) _then)
      : super(_value, (v) => _then(v as _$_Owner));

  @override
  _$_Owner get _value => super._value as _$_Owner;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_Owner(
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

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Owner implements _Owner {
  const _$_Owner({required this.id, required this.username});

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'Owner(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Owner &&
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
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      __$$_OwnerCopyWithImpl<_$_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
      {required final int id, required final String username}) = _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      throw _privateConstructorUsedError;
}

SimplePhoto _$SimplePhotoFromJson(Map<String, dynamic> json) {
  return _SimplePhoto.fromJson(json);
}

/// @nodoc
mixin _$SimplePhoto {
  int get id => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimplePhotoCopyWith<SimplePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplePhotoCopyWith<$Res> {
  factory $SimplePhotoCopyWith(
          SimplePhoto value, $Res Function(SimplePhoto) then) =
      _$SimplePhotoCopyWithImpl<$Res>;
  $Res call({int id, String thumbnail});
}

/// @nodoc
class _$SimplePhotoCopyWithImpl<$Res> implements $SimplePhotoCopyWith<$Res> {
  _$SimplePhotoCopyWithImpl(this._value, this._then);

  final SimplePhoto _value;
  // ignore: unused_field
  final $Res Function(SimplePhoto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SimplePhotoCopyWith<$Res>
    implements $SimplePhotoCopyWith<$Res> {
  factory _$$_SimplePhotoCopyWith(
          _$_SimplePhoto value, $Res Function(_$_SimplePhoto) then) =
      __$$_SimplePhotoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String thumbnail});
}

/// @nodoc
class __$$_SimplePhotoCopyWithImpl<$Res> extends _$SimplePhotoCopyWithImpl<$Res>
    implements _$$_SimplePhotoCopyWith<$Res> {
  __$$_SimplePhotoCopyWithImpl(
      _$_SimplePhoto _value, $Res Function(_$_SimplePhoto) _then)
      : super(_value, (v) => _then(v as _$_SimplePhoto));

  @override
  _$_SimplePhoto get _value => super._value as _$_SimplePhoto;

  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_SimplePhoto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimplePhoto implements _SimplePhoto {
  const _$_SimplePhoto({required this.id, required this.thumbnail});

  factory _$_SimplePhoto.fromJson(Map<String, dynamic> json) =>
      _$$_SimplePhotoFromJson(json);

  @override
  final int id;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'SimplePhoto(id: $id, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimplePhoto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$$_SimplePhotoCopyWith<_$_SimplePhoto> get copyWith =>
      __$$_SimplePhotoCopyWithImpl<_$_SimplePhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimplePhotoToJson(
      this,
    );
  }
}

abstract class _SimplePhoto implements SimplePhoto {
  const factory _SimplePhoto(
      {required final int id,
      required final String thumbnail}) = _$_SimplePhoto;

  factory _SimplePhoto.fromJson(Map<String, dynamic> json) =
      _$_SimplePhoto.fromJson;

  @override
  int get id;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_SimplePhotoCopyWith<_$_SimplePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
