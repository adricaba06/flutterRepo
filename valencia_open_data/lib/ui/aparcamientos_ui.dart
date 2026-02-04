import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valencia_open_data/features/parking_list/bloc/parking_list_bloc.dart';
import '../core/services/parking_service.dart';

class AparcamientosPageView extends StatefulWidget {
  const AparcamientosPageView({super.key});

  @override
  State<AparcamientosPageView> createState() => _AparcamientosPageViewState();
}

class _AparcamientosPageViewState extends State<AparcamientosPageView> {
  late ParkingListBloc parkingListBloc;

  @override
  void initState() {
    super.initState();
    parkingListBloc = ParkingListBloc(parkingService: ParkingService())
      ..add(ParkingListFetchAllEvent());
  }

  @override
  void dispose() {
    parkingListBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aparcamientos de Bicicletas')),
      body: BlocBuilder<ParkingListBloc, ParkingListState>(
        bloc: parkingListBloc,
        builder: (context, state) {
          if (state is ParkingListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ParkingListLoaded || state is ParkingListSuccess) {
            final parkingList = (state is ParkingListLoaded)
                ? state.parkingList
                : (state as ParkingListSuccess).parkingList;

            return ListView.builder(
              itemCount: parkingList.length,
              itemBuilder: (context, index) {
                final aparcamiento = parkingList[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(aparcamiento.tipo),
                    subtitle: Text('Plazas: ${aparcamiento.numplazas}'),
                    trailing: Text(
                      'Lat: ${aparcamiento.geoPoint2D.lat.toStringAsFixed(4)}, '
                      'Lon: ${aparcamiento.geoPoint2D.lon.toStringAsFixed(4)}',
                    ),
                  ),
                );
              },
            );
          } else if (state is ParkingListError) {
            return Center(child: Text(state.message));
          }

          // Estado por defecto
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
