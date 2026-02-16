part of 'movie_bloc.dart';

@immutable
sealed class MovieEvent {
  
}

class FetchMovieList extends MovieEvent {
  FetchMovieList();
}