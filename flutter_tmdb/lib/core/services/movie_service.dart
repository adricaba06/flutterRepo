import 'dart:convert';
import 'dart:io';

import 'package:flutter_tmdb/core/interfaces/movies_list_interface.dart';
import 'package:flutter_tmdb/core/models/movies_list_popular_response.dart';
import 'package:http/http.dart' as http;

enum MovieListType {
  popular("popular"),
  topRated("top_rated"),
  nowPlaying("now_playing"),
  upcoming("upcoming");

  final String value;
  const MovieListType(this.value);
}

class MovieService implements MoviesListInterface {
  final String _apiBaseUrl = "https://api.themoviedb.org/3/movie";

  @override
  Future<List<Movie>> getList(MovieListType listType) async {
    var response = await http.get(Uri.parse("$_apiBaseUrl/${listType.value}"), headers: {HttpHeaders.authorizationHeader:'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiNmJmODVlM2U2NzMzNmNiYTgzMzFiODRkNGU4YWVhOCIsIm5iZiI6MTc2MzM2NzgzNi41NjMsInN1YiI6IjY5MWFkYjljNzExMTIyMGE2YjVkZmU3NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.pV-bN-Ko4SWCx_hVhi0bj6fz6UzjHe7iYF1Ke36W6DY'});
    try {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var moviesList = MovieListPopularResponse.fromJson(
          json.decode(response.body),
        ).results;
        return moviesList;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception("Error al obtener las películas populares");
    }
  }
}
