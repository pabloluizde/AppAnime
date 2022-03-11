import 'package:criatividade/core/images_service.dart';
import 'package:flutter/material.dart';

class CaixaPreta extends Container {
  CaixaPreta(
      {image = AppImages.logo,
      color = Colors.red,
      radius = 05.0,
      title = 'Title',
      fontsize = 30.0})
      : super(
            width: 350,
            height: 300,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(radius),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      height: double.infinity,
                    )),
                Container(
                  margin: EdgeInsets.only(top: 200),
                  width: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Color.fromARGB(0, 0, 0, 0).withOpacity(0.0),
                        Color.fromARGB(243, 0, 0, 0)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 215, left: 10),
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: fontsize,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ],
            ));
}
