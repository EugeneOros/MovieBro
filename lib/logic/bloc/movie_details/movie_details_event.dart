part of 'movie_details_bloc.dart';

@immutable
abstract class MovieDetailsEvent extends Equatable {
  const MovieDetailsEvent();

  @override
  List<Object> get props => [];
}

class LoadMovieDetails extends MovieDetailsEvent {
  final Movie movie;

  const LoadMovieDetails(this.movie);

  @override
  List<Object> get props => [movie];
}
