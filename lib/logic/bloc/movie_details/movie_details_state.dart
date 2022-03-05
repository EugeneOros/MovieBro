part of 'movie_details_bloc.dart';

@immutable
abstract class MovieDetailsState extends Equatable {
  const MovieDetailsState();

  @override
  List<Object> get props => [];
}

class MovieDetailsLoading extends MovieDetailsState {}

class MovieDetailsLoaded extends MovieDetailsState {
  final Movie movie;

  const MovieDetailsLoaded(this.movie);

  @override
  List<Object> get props => [movie];
}

class MovieDetailsNotLoaded extends MovieDetailsState {}
