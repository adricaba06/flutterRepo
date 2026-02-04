part of 'parking_list_bloc.dart';

@immutable
sealed class ParkingListEvent {}

final class ParkingListFetchAllEvent extends ParkingListEvent {}
