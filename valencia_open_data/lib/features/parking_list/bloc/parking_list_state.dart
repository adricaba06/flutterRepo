part of 'parking_list_bloc.dart';

@immutable
sealed class ParkingListState {}

final class ParkingListInitial extends ParkingListState {}

final class ParkingListLoading extends ParkingListState {}

final class ParkingListLoaded extends ParkingListState {
  final List<Aparcamiento> parkingList;

  ParkingListLoaded(this.parkingList);
}

final class ParkingListError extends ParkingListState {
  final String message;

  ParkingListError(this.message);
}

/// Estado opcional de éxito (si quieres diferenciarlo de Loaded)
final class ParkingListSuccess extends ParkingListState {
  final List<Aparcamiento> parkingList;

  ParkingListSuccess({required this.parkingList});
}
