import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/logic/models/movie/movie.dart';

import 'background_image.dart';
import 'item/movie_item.dart';

class MoviesList extends StatelessWidget {
  final List<Movie> movies;

  const MoviesList({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(child: const BackgroundImage()),
        Container(
          constraints: const BoxConstraints(maxWidth: 700),
          child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              Movie movie = movies[index];
              return MovieItem(
                movie: movie,
                onPressed: () {
                  Navigator.of(context).pushNamed('/two_buttons');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}