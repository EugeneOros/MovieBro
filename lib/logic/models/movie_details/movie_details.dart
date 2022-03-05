import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie_details.freezed.dart';

part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails{
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory MovieDetails({
    required int revenue,
    required int budget,
    required String originalLanguage,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);
}