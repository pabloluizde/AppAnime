import 'package:criatividade/core/images_service.dart';
import 'package:criatividade/pages/Kimetsu_database/controller/kimetsuControler.dart';
import 'package:criatividade/pages/Kimetsu_database/state/kimetsustate.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import 'pageKimetsu.dart';

class KimetsuHomePage extends StatefulWidget {
  const KimetsuHomePage({Key? key}) : super(key: key);

  @override
  State<KimetsuHomePage> createState() => _KimetsuHomePageState();
}

class _KimetsuHomePageState extends State<KimetsuHomePage> {
  final controller = KimetsuController();
  @override
  void initState() {
    super.initState();
    controller.getKimetsu();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == KimetsuState.sucess) {
      return Scaffold(
          backgroundColor: Color.fromARGB(255, 33, 33, 33),
          appBar: NewGradientAppBar(
              title: const Text('Demons Slayer'),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 15, 0, 69),
                Color.fromARGB(255, 46, 2, 53)
              ])),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  childAspectRatio: 5 / 3,
                  crossAxisCount: 1,
                  children: controller.kPerso!
                      .map((e) => KimetsuWidgets(
                          personagem: e.personagem,
                          idade: e.idade,
                          altura: e.altura,
                          peso: e.peso,
                          imagem: e.imagem,
                          fundo: e.fundo))
                      .toList(),
                ),
              ),
            ],
          ));
    } else {
      return Container(
          alignment: Alignment.center,
          child: SizedBox(
            width: 400,
            height: 400,
            child: Image.asset(AppImages.felixGif),
          ));
    }
  }
}
