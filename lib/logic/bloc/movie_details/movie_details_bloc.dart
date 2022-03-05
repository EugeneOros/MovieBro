import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_recruitment_task/logic/models/movie/movie.dart';
import 'package:flutter_recruitment_task/logic/services/movie_service.dart';
import 'package:meta/meta.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieService _movieService;

  MovieDetailsBloc({required MovieService moviesService})
      : _movieService = moviesService,
        super(MovieDetailsLoading()) {
    on<LoadMovieDetails>(_mapLoadMovieDetailsToState);
  }

  Future<void> _mapLoadMovieDetailsToState(LoadMovieDetails event, Emitter<MovieDetailsState> emit) async {
    emit(MovieDetailsLoading());
    try {
      Movie movie = event.movie.copyWith(details: await _movieService.getMovieDetails(event.movie.id));
      emit(MovieDetailsLoaded(movie));
    } catch (e) {
      emit(MovieDetailsNotLoaded());
    }
  }
}
