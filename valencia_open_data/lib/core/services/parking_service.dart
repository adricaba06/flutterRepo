// Primero creo una clase que implementa la interfaz

import 'package:valencia_open_data/core/interfaces/parking_interface.dart';
import 'package:http/http.dart' as http;
import 'package:valencia_open_data/core/models/parking_list_response.dart';

class ParkingService implements ParkingInterface {
  @override
  Future<List<Aparcamiento>> getAllParking() async {
    // aqui en el servicio es donde le vamos a dar cuerpo al metodo
    var url = Uri.parse(
      'valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/aparcaments-bicicletes-aparcamientos-bicicletas/records',
    );

    try {
      var response = await http.get(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var parkingListResponse = ParkingListResponse.fromJson(response.body);
        return parkingListResponse.results;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
