part of 'popular_movies_bloc.dart';

@immutable
sealed class PopularMoviesEvent {}

abstract class LoadPopularMovies extends PopularMoviesEvent {
  final MovieListType listType;

  LoadPopularMovies({required this.listType});
}

//acciones que puede hacer la pantalla
