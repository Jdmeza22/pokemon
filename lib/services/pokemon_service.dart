import 'package:flutter/material.dart';
import 'package:pokemon/data/models/pokemons_model.dart';
import 'package:http/http.dart' as http;

class HeroesServices extends ChangeNotifier {
  List<Result> heroesResults = [];
  HeroesServices(){
    getHeroes();
  }

  getHeroes() async {
    const url ='https://rickandmortyapi.com/api/character';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final resultResponse = rickYMortyModelFromJson(response.body);
      heroesResults.addAll(resultResponse.results);
    } else {
    }
    notifyListeners();
  }
}
