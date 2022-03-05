import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/logic/bloc/movie_details/movie_details_bloc.dart';
import 'package:flutter_recruitment_task/logic/models/movie/movie.dart';
import 'package:flutter_recruitment_task/pages/movies/widgets/movies_list/item/footer.dart';
import 'package:flutter_recruitment_task/widgets/buttons/surface_button.dart';

class MovieItem extends StatelessWidget {
  final Function onPressed;
  final Movie movie;

  const MovieItem({Key? key, required this.movie, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onPressed() {
      BlocProvider.of<MovieDetailsBloc>(context).add(LoadMovieDetails(movie));
      Navigator.of(context).pushNamed('/details');
    }

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SurfaceButton(
        onPressed: _onPressed,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  movie.title,
                  style: Theme.of(context).textTheme.bodyText1,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 10),
              ItemFooter(avgVoteRating: movie.voteAverage)
            ],
          ),
        ),
      ),
    );
  }
}
