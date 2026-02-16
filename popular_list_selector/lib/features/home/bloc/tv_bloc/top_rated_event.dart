part of 'top_rated_bloc.dart';

@immutable
sealed class TopRatedEvent {}

class FetchTopRatedList extends TopRatedEvent {
  FetchTopRatedList();
}