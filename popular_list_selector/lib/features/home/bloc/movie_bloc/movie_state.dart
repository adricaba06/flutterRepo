part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class PopularMovieInitial extends MovieState {}

final class PopularMovieLoading extends MovieState {}

final class PopularMovieLoaded extends MovieState {
  final List<Movie> movies;
  PopularMovieLoaded({required this.movies});
}

final class PopularMovieError extends MovieState{
  final String message;
  PopularMovieError({required this.message});
}