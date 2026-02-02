
import 'package:http/http.dart' as http;
import 'package:start_wars_api/core/interfaces/star_wars_interface.dart';
import 'package:start_wars_api/core/models/star_wars_person.dart';
import 'dart:convert';

class StarWarsPersonService implements StarWarsInterface{

  @override
  Future<List<StarWarsPersonResponse>> getAllPeople() async {
    var url = Uri.parse("https://swapi.info/api/people");

    try{
      var response = await http.get(url);

      if (response.statusCode == 200 || response.statusCode == 201){
        var starWarsPersonListResponse = StarWarsPersonResponse.fromJson(jsonDecode(response.body));
        return [starWarsPersonListResponse];
      } else{
        return [];
      }
    }catch (e){
        return [];
      }
  }









}