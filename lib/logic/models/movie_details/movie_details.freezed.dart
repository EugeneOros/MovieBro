// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
class _$MovieDetailsTearOff {
  const _$MovieDetailsTearOff();

  _MovieDetails call(
      {required int revenue,
      required int budget,
      required String originalLanguage}) {
    return _MovieDetails(
      revenue: revenue,
      budget: budget,
      originalLanguage: originalLanguage,
    );
  }

  MovieDetails fromJson(Map<String, Object?> json) {
    return MovieDetails.fromJson(json);
  }
}

/// @nodoc
const $MovieDetails = _$MovieDetailsTearOff();

/// @nodoc
mixin _$MovieDetails {
  int get revenue => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  String get originalLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res>;
  $Res call({int revenue, int budget, String originalLanguage});
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res> implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  final MovieDetails _value;
  // ignore: unused_field
  final $Res Function(MovieDetails) _then;

  @override
  $Res call({
    Object? revenue = freezed,
    Object? budget = freezed,
    Object? originalLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailsCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$MovieDetailsCopyWith(
          _MovieDetails value, $Res Function(_MovieDetails) then) =
      __$MovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int revenue, int budget, String originalLanguage});
}

/// @nodoc
class __$MovieDetailsCopyWithImpl<$Res> extends _$MovieDetailsCopyWithImpl<$Res>
    implements _$MovieDetailsCopyWith<$Res> {
  __$MovieDetailsCopyWithImpl(
      _MovieDetails _value, $Res Function(_MovieDetails) _then)
      : super(_value, (v) => _then(v as _MovieDetails));

  @override
  _MovieDetails get _value => super._value as _MovieDetails;

  @override
  $Res call({
    Object? revenue = freezed,
    Object? budget = freezed,
    Object? originalLanguage = freezed,
  }) {
    return _then(_MovieDetails(
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MovieDetails with DiagnosticableTreeMixin implements _MovieDetails {
  _$_MovieDetails(
      {required this.revenue,
      required this.budget,
      required this.originalLanguage});

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsFromJson(json);

  @override
  final int revenue;
  @override
  final int budget;
  @override
  final String originalLanguage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieDetails(revenue: $revenue, budget: $budget, originalLanguage: $originalLanguage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieDetails'))
      ..add(DiagnosticsProperty('revenue', revenue))
      ..add(DiagnosticsProperty('budget', budget))
      ..add(DiagnosticsProperty('originalLanguage', originalLanguage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetails &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other.budget, budget) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(revenue),
      const DeepCollectionEquality().hash(budget),
      const DeepCollectionEquality().hash(originalLanguage));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailsCopyWith<_MovieDetails> get copyWith =>
      __$MovieDetailsCopyWithImpl<_MovieDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailsToJson(this);
  }
}

abstract class _MovieDetails implements MovieDetails {
  factory _MovieDetails(
      {required int revenue,
      required int budget,
      required String originalLanguage}) = _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  int get revenue;
  @override
  int get budget;
  @override
  String get originalLanguage;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailsCopyWith<_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
