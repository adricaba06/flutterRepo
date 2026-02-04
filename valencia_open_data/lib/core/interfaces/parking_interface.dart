//para crear la interfaz primero creamos una clase abstracta donde vamos a definir los difewrentes metodos

import 'package:valencia_open_data/core/models/parking_list_response.dart';

abstract class ParkingInterface {
  //future es como observable
  Future<List<Aparcamiento>> getAllParking();
}

//future es una promesa, un contrato,
// es decir: has peidido una pizza pero todavia no esta lista,
// el tciket de compra es ese future que nos indica que obtendremos 
//la pizza en un futuro

