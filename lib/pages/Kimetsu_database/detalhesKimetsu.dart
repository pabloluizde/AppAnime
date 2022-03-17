import 'package:criatividade/pages/Kimetsu_database/widgets/containerDecoration.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class KimetsuDetalhes extends StatefulWidget {
  final String personagem;
  final int idade;
  final double altura;
  final int peso;
  final String imagem;
  final String fundo;

  KimetsuDetalhes({
    Key? key,
    required this.personagem,
    required this.idade,
    required this.altura,
    required this.peso,
    required this.imagem,
    required this.fundo,
  }) : super(key: key);

  @override
  State<KimetsuDetalhes> createState() => _KimetsuDetalhesState();
}

class _KimetsuDetalhesState extends State<KimetsuDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
        appBar: NewGradientAppBar(
            title: Text(widget.personagem),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 15, 0, 69),
              Color.fromARGB(255, 46, 2, 53)
            ])),
        body: Stack(children: [
          ContainerDecoraation(
              backgroundImage: widget.fundo, page: Text('aaa')),
          Column(
            children: [],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 98.0),
            child: Image(image: NetworkImage(widget.imagem)),
          )
        ]));
  }
}
