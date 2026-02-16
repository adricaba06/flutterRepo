part of 'top_rated_bloc.dart';

@immutable
sealed class TopRatedState {}

final class TopRatedInitial extends TopRatedState {}

final class TopRatedLoading extends TopRatedState {}

final class TopRatedLoaded extends TopRatedState {
  final List<Movie> movies;
  TopRatedLoaded({required this.movies});
}

final class TopRatedError extends TopRatedState{
  final String message;
  TopRatedError({required this.message});
}
