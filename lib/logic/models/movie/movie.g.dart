// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      details: json['details'] == null
          ? null
          : MovieDetails.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'details': instance.details,
    };
