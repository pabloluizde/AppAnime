import 'package:criatividade/core/images_service.dart';
import 'package:flutter/material.dart';

class CaixaText extends Container {
  CaixaText(
      {nome = "nenhum",
      idade = 11,
      altura = 1.70,
      marginLeft: 15.0,
      marginTop: 20.0})
      : super(
            margin: EdgeInsets.only(left: marginLeft, top: marginTop),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nome,
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
            ));
}
