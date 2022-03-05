part of 'movies_bloc.dart';

@immutable
abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class MoviesInitial extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesLoaded extends MoviesState {
  final List<Movie> movies;

  const MoviesLoaded([this.movies = const []]);

  @override
  List<Object> get props => [movies];
}

class NoMoviesFounded extends MoviesState {}
