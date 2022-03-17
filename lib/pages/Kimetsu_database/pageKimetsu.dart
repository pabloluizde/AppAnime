import 'package:criatividade/pages/Kimetsu_database/detalhesKimetsu.dart';
import 'package:criatividade/pages/Kimetsu_database/widgets/containerDecoration.dart';
import 'package:criatividade/pages/Kimetsu_database/widgets/containerImage.dart';
import 'package:criatividade/pages/Kimetsu_database/widgets/containerText.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class KimetsuWidgets extends StatelessWidget {
  final String personagem;
  final int idade;
  final double altura;
  final int peso;
  final String imagem;
  final String fundo;

  KimetsuWidgets({
    Key? key,
    required this.personagem,
    required this.idade,
    required this.altura,
    required this.peso,
    required this.imagem,
    required this.fundo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 33, 33),
        body: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => KimetsuDetalhes(
                            personagem: this.personagem,
                            idade: this.idade,
                            altura: this.altura,
                            peso: this.peso,
                            imagem: this.imagem,
                            fundo: this.fundo,
                          )));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      ContainerDecoraation(
                          backgroundImage: fundo,
                          page: CaixaText(
                            nome: personagem,
                            altura: altura,
                            idade: idade,
                          )),
                      ImagePersonagem(
                        personagemimagem: imagem,
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
