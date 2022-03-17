import 'dart:convert';

import 'package:criatividade/models/personagens.dart';
import 'package:flutter/services.dart';

class KimetsuRepo {
  Future<List<PersonagensModel>> getKimetsu() async {
    final response =
        await rootBundle.loadString("assets/dataBase/kimetsuPersonagens.json");
    final list = jsonDecode(response) as List;
    final kPerso = list.map((e) => PersonagensModel.fromMap(e)).toList();
    return kPerso;
  }
}
