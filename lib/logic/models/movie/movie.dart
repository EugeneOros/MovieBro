import 'package:flutter_recruitment_task/logic/models/movie_details/movie_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Movie({
    required int id,
    required String title,
    required double voteAverage,
    MovieDetails? details,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
