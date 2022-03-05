import 'dart:convert';

import 'package:flutter_recruitment_task/logic/models/movie/movie.dart';
import 'package:flutter_recruitment_task/logic/models/movie_details/movie_details.dart';
import 'package:http/http.dart' as http;

class MovieService {
  static const _apiKey = '052afdb6e0ab9af424e3f3c8edbb33fb';
  static const _baseUrl = 'https://api.themoviedb.org/3';

  Future<List<Movie>> searchMovies(String query) async {
    final response = await http.get(Uri.parse(_getSearchMoviesUrl(query)));
    final json = jsonDecode(response.body);
    List<Movie> movieList = (json['results'] as List).map((item) => Movie.fromJson(item)).toList();
    return movieList;
  }

  Future<MovieDetails> getMovieDetails(int movieId) async {
    final response = await http.get(Uri.parse('$_baseUrl/movie/$movieId?api_key=$_apiKey'));
    final json = jsonDecode(response.body);
    return MovieDetails.fromJson(json);
  }

  String _getSearchMoviesUrl(String query) {
    var parameters = {'api_key': _apiKey, 'query': query};
    var encodedParameters = parameters.entries.map((entry) => '${_encode(entry.key)}=${_encode(entry.value)}').join('&');
    return '$_baseUrl/search/movie?$encodedParameters';
  }

  String _encode(String component) => Uri.encodeComponent(component);
}
