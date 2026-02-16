import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:popular_list_selector/core/models/movies_list_popular_response.dart';
import 'package:popular_list_selector/core/services/top_rated_movie_list_service.dart';
import 'package:popular_list_selector/features/home/bloc/movie_bloc/movie_bloc.dart';

part 'top_rated_event.dart';
part 'top_rated_state.dart';

class TopRatedBloc extends Bloc<TopRatedEvent, TopRatedState> {
  final TopRatedMovieListService topRatedMovieListService;

  TopRatedBloc(this.topRatedMovieListService) : super(TopRatedInitial()) {
    
    on<FetchTopRatedList>(_onFetchTopRated);
  }

  Future<void> _onFetchTopRated(
    FetchTopRatedList event, 
    Emitter<TopRatedState> emit,
  ) async {
    emit(TopRatedLoading());
    try {
     
      final movies = await topRatedMovieListService.getAllMovies();
      emit(TopRatedLoaded(movies: movies));
    } catch (e) {
      emit(TopRatedError(message: e.toString()));
    }
  }
}
