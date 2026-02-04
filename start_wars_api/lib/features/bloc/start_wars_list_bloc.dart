import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:start_wars_api/core/models/star_wars_person.dart';
import 'package:start_wars_api/core/services/star_wars_person_service.dart';

part 'start_wars_list_event.dart';
part 'start_wars_list_state.dart';

class StartWarsListBloc extends Bloc<StartWarsListEvent, StartWarsListState> {
  StartWarsListBloc(StarWarsPersonService starWarsPersonService) : super(StartWarsListInitial()) {
    on<StartWarsListEvent>((event, emit) async {
      emit(StartWarsListLoading());
      try{
        var apiStarWarsList = await starWarsPersonService.getAllPeople();
        emit(StarWarsListSucces(starwarsList: apiStarWarsList));
      }catch (e){
        emit(StarWarsListError(message: e.toString()));
      }
    });
  }
}
