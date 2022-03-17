import 'package:criatividade/core/images_service.dart';
import 'package:flutter/material.dart';

class ImagePersonagem extends Container {
  ImagePersonagem({personagemimagem: "Ta em falta meu rei", sizeheight: 600.0})
      : super(
            height: sizeheight,
            margin: EdgeInsets.only(left: 50, top: 30),
            child: Image(image: NetworkImage(personagemimagem)));
}
