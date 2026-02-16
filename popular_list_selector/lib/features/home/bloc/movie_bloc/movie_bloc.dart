import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:popular_list_selector/core/models/movies_list_popular_response.dart';
import 'package:popular_list_selector/core/services/movie_list_service.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {

  final MovieListService movieListService;

  MovieBloc(this.movieListService) : super(PopularMovieInitial()) {
    on<FetchMovieList>(_onFetchMovieList);
  }

  Future<void> _onFetchMovieList(
    FetchMovieList event,
    Emitter<MovieState> emit,
  ) async {
    emit(PopularMovieLoading());
    try {
      final movies = await MovieListService().getAllMovies();
      emit(PopularMovieLoaded(movies: movies));
    } catch (e) {
      emit(PopularMovieError(message: e.toString()));
    }
  }
}

