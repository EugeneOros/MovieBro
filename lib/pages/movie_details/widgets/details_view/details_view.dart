import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/logic/models/movie/movie.dart';
import 'package:flutter_recruitment_task/pages/movie_details/utils/helpers.dart';

import 'background_image.dart';
import 'movie_details_item.dart';

class DetailsView extends StatelessWidget {
  final Movie movie;

  const DetailsView({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int budget = movie.details!.budget;
    int revenue = movie.details!.revenue;
    double rating = movie.voteAverage;
    String language = movie.details!.originalLanguage;

    var detailsList = [
      MapEntry('Rating', '$rating/10'),
      MapEntry('Language', '$language'),
      MapEntry('Budget', '$budget\$'),
      MapEntry('Revenue', '$revenue\$'),
      MapEntry('Should I watch it today?', (shouldIWatchMovie(budget, revenue) ? 'Yes' : 'No')),
    ];

    _getItemsList() {
      return detailsList
          .asMap()
          .map(
            (index, e) => MapEntry(
              index,
              MovieDetailsItem(
                title: e.key,
                value: e.value,
                isEven: index % 2 == 0,
              ),
            ),
          )
          .values
          .toList();
    }

    return Stack(
      children: [
        Positioned(child: const BackgroundImage()),
        ListView(children: _getItemsList()),
      ],
    );
  }
}
