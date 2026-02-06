import 'package:bloc/bloc.dart';
import 'package:flutter_tmdb/core/models/movies_list_popular_response.dart';
import 'package:flutter_tmdb/core/services/movie_service.dart';
import 'package:meta/meta.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc(MovieService movieService) : super(PopularMoviesInitial()) {
    on<LoadPopularMovies>((event, emit) async {
      emit(PopularMovieLoading());
      try {
        var apiMoviedb = await movieService.getList(MovieListType.popular);
        emit(PopularMovieSuccess(movieList: apiMoviedb));
      } catch (e) {
        emit(PopularMovieError(message: e.toString()));
      }
    });      
  }
}
