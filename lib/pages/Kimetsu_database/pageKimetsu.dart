import 'package:criatividade/pages/Kimetsu_database/detalhesKimetsu.dart';
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
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.1),
                                BlendMode.dstATop),
                            image: new NetworkImage(
                              fundo,
                            ),
                          ),
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Color.fromARGB(0, 0, 0, 0).withOpacity(0.0),
                              Color.fromARGB(243, 0, 0, 0)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 20, top: 20),
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          personagem,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0,
                                          ),
                                        ),
                                        Text(
                                          "Idade: ${idade}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0,
                                          ),
                                        ),
                                        Text(
                                          "Altura: ${altura}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        margin: EdgeInsets.only(left: 10),
                        width: 370,
                        height: 650,
                      ),
                      Container(
                          height: 600,
                          margin: EdgeInsets.only(left: 50, top: 30),
                          child: Image(image: NetworkImage(imagem))),
                    ],
                  ),
                ),
              ],
            )));
  }
}
