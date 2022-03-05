import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/app.dart';
import 'package:flutter_recruitment_task/logic/bloc/movies/movies_bloc.dart';
import 'package:flutter_recruitment_task/logic/services/movie_service.dart';

import 'logic/bloc/movie_details/movie_details_bloc.dart';

Future<List<BlocProvider<Object?>>> _getBlocProviders() async {
  // Services
  final MovieService _moviesService = MovieService();

  // Blocs
  final moviesBloc = MoviesBloc(moviesService: _moviesService);
  final movieDetailsBloc = MovieDetailsBloc(moviesService: _moviesService);

  // BlocProviders
  return [
    BlocProvider<MoviesBloc>(
      lazy: false,
      create: (context) => moviesBloc,
    ),
    BlocProvider<MovieDetailsBloc>(
      create: (context) => movieDetailsBloc,
    ),
  ];
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiBlocProvider(
    providers: await _getBlocProviders(),
    child: const MovieApp(),
  ));
}
