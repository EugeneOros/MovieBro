// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {required int id,
      required String title,
      required double voteAverage,
      MovieDetails? details}) {
    return _Movie(
      id: id,
      title: title,
      voteAverage: voteAverage,
      details: details,
    );
  }

  Movie fromJson(Map<String, Object?> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  MovieDetails? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call({int id, String title, double voteAverage, MovieDetails? details});

  $MovieDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
    ));
  }

  @override
  $MovieDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $MovieDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, double voteAverage, MovieDetails? details});

  @override
  $MovieDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? details = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Movie with DiagnosticableTreeMixin implements _Movie {
  _$_Movie(
      {required this.id,
      required this.title,
      required this.voteAverage,
      this.details});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final double voteAverage;
  @override
  final MovieDetails? details;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Movie(id: $id, title: $title, voteAverage: $voteAverage, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Movie'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('voteAverage', voteAverage))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(details));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
      {required int id,
      required String title,
      required double voteAverage,
      MovieDetails? details}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  double get voteAverage;
  @override
  MovieDetails? get details;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}
