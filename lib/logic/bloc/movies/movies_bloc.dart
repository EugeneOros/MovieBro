import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_recruitment_task/logic/models/movie/movie.dart';
import 'package:flutter_recruitment_task/logic/services/movie_service.dart';
import 'package:meta/meta.dart';

part 'movies_event.dart';

part 'movies_state.dart';

class MoviesBloc extends Bloc<MovieEvent, MoviesState> {
  final MovieService _movieService;

  MoviesBloc({required MovieService moviesService})
      : _movieService = moviesService,
        super(MoviesInitial()) {
    on<SearchMovies>(_mapSearchMoviesToState);
  }

  Future<void> _mapSearchMoviesToState(SearchMovies event, Emitter<MoviesState> emit) async {
    emit(MoviesLoading());
    List<Movie> movies;
    if (event.searchQuery.isNotEmpty) {
      movies = await _movieService.searchMovies(event.searchQuery);
      movies.sort((a, b) => b.voteAverage.compareTo(a.voteAverage));
      movies.isEmpty ? emit(NoMoviesFounded()) : emit(MoviesLoaded(movies));
    } else {
      emit(NoMoviesFounded());
    }
  }
}
