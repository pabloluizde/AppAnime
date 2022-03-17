import 'package:criatividade/models/personagens.dart';
import 'package:criatividade/pages/Kimetsu_database/repoKimetsu/repo.dart';
import 'package:criatividade/pages/Kimetsu_database/state/kimetsustate.dart';
import 'package:flutter/foundation.dart';

class KimetsuController {
  final stateNotifier = ValueNotifier<KimetsuState>(KimetsuState.empty);
  set state(KimetsuState state) => stateNotifier.value = state;
  KimetsuState get state => stateNotifier.value;

  List<PersonagensModel>? kPerso;

  final repository = KimetsuRepo();

  void getKimetsu() async {
    state = KimetsuState.loading;
    kPerso = await repository.getKimetsu();
    state = KimetsuState.sucess;
  }
}
