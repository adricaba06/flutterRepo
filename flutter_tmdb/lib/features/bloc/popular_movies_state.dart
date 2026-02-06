part of 'popular_movies_bloc.dart';

@immutable
sealed class PopularMoviesState {} // como esta la pantalla en este momento??

final class PopularMoviesInitial extends PopularMoviesState {}

final class PopularMovieLoading extends PopularMoviesState {}

final class PopularMovieSuccess extends PopularMoviesState {
  final List<Movie> movieList;

  PopularMovieSuccess({required this.movieList});
}

final class PopularMovieError extends PopularMoviesState {
  final String message;

  PopularMovieError({required this.message});
}
