part of 'movies_bloc.dart';

@immutable
abstract class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object> get props => [];
}

class SearchMovies extends MovieEvent {
  final String searchQuery;

  const SearchMovies(this.searchQuery);

  @override
  List<Object> get props => [searchQuery];
}
