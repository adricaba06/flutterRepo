import 'dart:ffi';

import 'package:popular_list_selector/core/models/movies_list_popular_response.dart';

abstract class MovieListInterface {
  Future<List<Movie>>getAllMovies();
}