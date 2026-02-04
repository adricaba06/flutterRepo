

import '../models/star_wars_person.dart';

abstract class StarWarsInterface {

  Future<List<StarWarsPersonResponse>> getAllPeople();

}