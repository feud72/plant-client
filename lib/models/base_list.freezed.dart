// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseList<T> {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseListCopyWith<T, BaseList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListCopyWith<T, $Res> {
  factory $BaseListCopyWith(
          BaseList<T> value, $Res Function(BaseList<T>) then) =
      _$BaseListCopyWithImpl<T, $Res>;
  $Res call({int count, String? next, String? previous, List<T> results});
}

/// @nodoc
class _$BaseListCopyWithImpl<T, $Res> implements $BaseListCopyWith<T, $Res> {
  _$BaseListCopyWithImpl(this._value, this._then);

  final BaseList<T> _value;
  // ignore: unused_field
  final $Res Function(BaseList<T>) _then;

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
              as List<T>,
    ));
  }
}

/// @nodoc
abstract class _$$_BaseListCopyWith<T, $Res>
    implements $BaseListCopyWith<T, $Res> {
  factory _$$_BaseListCopyWith(
          _$_BaseList<T> value, $Res Function(_$_BaseList<T>) then) =
      __$$_BaseListCopyWithImpl<T, $Res>;
  @override
  $Res call({int count, String? next, String? previous, List<T> results});
}

/// @nodoc
class __$$_BaseListCopyWithImpl<T, $Res> extends _$BaseListCopyWithImpl<T, $Res>
    implements _$$_BaseListCopyWith<T, $Res> {
  __$$_BaseListCopyWithImpl(
      _$_BaseList<T> _value, $Res Function(_$_BaseList<T>) _then)
      : super(_value, (v) => _then(v as _$_BaseList<T>));

  @override
  _$_BaseList<T> get _value => super._value as _$_BaseList<T>;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_BaseList<T>(
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
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_BaseList<T> implements _BaseList<T> {
  const _$_BaseList(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<T> results})
      : _results = results;

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<T> _results;
  @override
  List<T> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'BaseList<$T>(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseList<T> &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_BaseListCopyWith<T, _$_BaseList<T>> get copyWith =>
      __$$_BaseListCopyWithImpl<T, _$_BaseList<T>>(this, _$identity);
}

abstract class _BaseList<T> implements BaseList<T> {
  const factory _BaseList(
      {required final int count,
      required final String? next,
      required final String? previous,
      required final List<T> results}) = _$_BaseList<T>;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$_BaseListCopyWith<T, _$_BaseList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
