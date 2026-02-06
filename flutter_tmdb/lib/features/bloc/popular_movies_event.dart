part of 'popular_movies_bloc.dart';

@immutable
sealed class PopularMoviesEvent {}

final class LoadPopularMovies extends PopularMoviesEvent {}

//acciones que puede hacer la pantalla
