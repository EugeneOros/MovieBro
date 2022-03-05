import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/logic/bloc/movies/movies_bloc.dart';
import 'package:flutter_recruitment_task/widgets/app_placeholder.dart';
import 'package:flutter_recruitment_task/widgets/loading_indicator.dart';

import '../widgets/app_bar/app_bar.dart';
import '../widgets/movies_list/movies_list.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgColor = Theme.of(context).colorScheme.secondary.withOpacity(0.5);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: MoviesAppBar(),
      body: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          if (state is MoviesLoading) {
            return LoadingIndicator(backgroundColor: bgColor);
          } else if (state is MoviesLoaded) {
            return MoviesList(movies: state.movies);
          } else if (state is NoMoviesFounded) {
            return AppPlaceholder(svgImagePath: 'assets/popcorn.svg', text: 'No movies founded');
          } else if (state is MoviesInitial) {
            return AppPlaceholder(svgImagePath: 'assets/watching_movie.svg', text: 'Start searching for movie...');
          }
          return Container();
        },
      ),
    );
  }
}
