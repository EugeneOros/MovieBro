// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      revenue: json['revenue'] as int,
      budget: json['budget'] as int,
      originalLanguage: json['original_language'] as String,
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'revenue': instance.revenue,
      'budget': instance.budget,
      'original_language': instance.originalLanguage,
    };
