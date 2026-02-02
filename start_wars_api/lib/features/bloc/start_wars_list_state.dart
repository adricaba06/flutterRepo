part of 'start_wars_list_bloc.dart';

@immutable
sealed class StartWarsListState {}

final class StartWarsListInitial extends StartWarsListState {}
final class StartWarsListLoading extends StartWarsListState {}

final class StarWarsListSucces extends StartWarsListState {
 final List<StarWarsPersonResponse> starwarsList;
 StarWarsListSucces({required this.starwarsList});

}

final class StarWarsListError extends StartWarsListState{
  final String message;
  StarWarsListError({required this.message});

}






