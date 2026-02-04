import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:valencia_open_data/core/models/parking_list_response.dart';
import 'package:valencia_open_data/core/services/parking_service.dart';

part 'parking_list_event.dart';
part 'parking_list_state.dart';

class ParkingListBloc extends Bloc<ParkingListEvent, ParkingListState> {
  final parkingService = ParkingService();

  ParkingListBloc({required ParkingService parkingService}) : super(ParkingListInitial()) {
    on<ParkingListEvent>((event, emit) async {
      emit(ParkingListLoading());
      try {
        var apiParkingList = await parkingService.getAllParking();
        emit(ParkingListSuccess(parkingList: apiParkingList));
      } catch (e) {
        emit(ParkingListError(e.toString()));
      }
    });
  }
}
