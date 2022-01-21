import 'package:app_heroe/Models/heroe_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const urlHeroes = 'https://superhero-search.p.rapidapi.com/api/heroes';

class NewHeroe with ChangeNotifier {
  List<Heroe> heroes = [];

  NewHeroe() {
    getHeroes();
  }

  getHeroes() async {
    final resp = await http.get(Uri.parse(urlHeroes), headers: {
      'x-rapidapi-host': 'superhero-search.p.rapidapi.com',
      'x-rapidapi-key': '8879fcb69bmsh25f439c8e7ac820p173058jsnf9957694c78f'
    });

    final newResponse = heroeFromJson(resp.body);
    heroes.addAll(newResponse);

    notifyListeners();
  }
}
