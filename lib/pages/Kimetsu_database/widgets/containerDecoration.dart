import 'package:flutter/material.dart';

class ContainerDecoraation extends Container {
  ContainerDecoraation({
    backgroundImage: "não tem",
    page: Widget,
    marginLeft: 10.0,
  }) : super(
            margin: EdgeInsets.only(left: marginLeft),
            width: 370,
            height: 650,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop),
                image: new NetworkImage(
                  backgroundImage,
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
              children: [page],
            ));
}
