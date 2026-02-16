import 'package:popular_list_selector/core/config/tmdb_config.dart';
import 'package:popular_list_selector/core/interfaces/movie_list_interface.dart';
import 'package:popular_list_selector/core/models/movies_list_popular_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TopRatedMovieListService implements MovieListInterface {
  
  @override
  Future<List<Movie>> getAllMovies() async {
    var response = await http.get(
      Uri.parse('${TmdbConfig.baseUrl}/movie/top_rated'),
      headers: {
        'Authorization': 'Bearer ${TmdbConfig.apiKey}',
        'Content-Type': 'application/json;charset=utf-8',
      },
    );

    try {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var moviesList = PopularMovieListResponse.fromJson(
          json.decode(response.body),
        ).results;
        return moviesList;
      } else {
        return [];
      }
    } catch (e) {
      throw Exception("Error al obtener las top rated pelis");
    }
   
  }

}