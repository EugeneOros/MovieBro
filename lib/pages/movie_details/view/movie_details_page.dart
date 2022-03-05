import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/logic/bloc/movie_details/movie_details_bloc.dart';
import 'package:flutter_recruitment_task/widgets/app_placeholder.dart';
import 'package:flutter_recruitment_task/widgets/loading_indicator.dart';

import '../widgets/app_bar.dart';
import '../widgets/details_view/details_view.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _getBody(MovieDetailsState state) {
      if (state is MovieDetailsLoading) {
        return LoadingIndicator();
      } else if (state is MovieDetailsLoaded) {
        if (state.movie.details == null) {
          return AppPlaceholder(svgImagePath: 'assets/popcorn.svg', text: 'Ups. Something went wrong');
        }
        return DetailsView(movie: state.movie);
      }
      return AppPlaceholder(svgImagePath: 'assets/popcorn.svg', text: 'Ups. Something went wrong');
    }

    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        String title = '';
        if (state is MovieDetailsLoaded) {
          title = state.movie.title;
        }
        return Scaffold(
          appBar: MovieDetailsAppBar(title: title),
          body: _getBody(state),
        );
      },
    );
  }
}
