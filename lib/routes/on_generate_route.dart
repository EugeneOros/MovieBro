import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/pages/movie_details/view/movie_details_page.dart';
import 'package:flutter_recruitment_task/pages/movies/view/movies_page.dart';
import 'package:flutter_recruitment_task/routes/slide_page_route.dart';

typedef OnSaveCallback = Function(String title, String? note, String? url);

onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return SlidePageRouteBuilder(widget: MoviesPage(), direction: Axis.horizontal);
    case '/details':
      return SlidePageRouteBuilder(widget: MovieDetailsPage(), direction: Axis.vertical);
  }
}
