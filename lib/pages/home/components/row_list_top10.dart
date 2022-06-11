import 'package:criatividade/core/images_service.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<dynamic> imgList = [
  'https://64.media.tumblr.com/5bfef5a3dac4015f71d109ceb6a6dd00/d5abef368c1aa236-81/s540x810/d753b7700b48e22ef682738322d6cf69b2b9d162.gifv',
  'https://i0.wp.com/media.giphy.com/media/YWB6Hi29vA3jG/giphy.gif',
  'https://i.pinimg.com/originals/1e/95/66/1e9566aee16ded627e016d735af3fa47.gif',
  'https://static.wikia.nocookie.net/33eb4ca4-405a-4f5c-8d67-31fa65bbe686/scale-to-width/370',
  'https://c.tenor.com/2vkg2P2nWVkAAAAC/lonely-anya-spy-x-family.gif',
  'https://i.pinimg.com/originals/77/ec/22/77ec220a957c415c3f81ec2e9312d5ba.gif'
];

class RowTop10 extends Container {
  RowTop10({Key? key})
      : super(
          key: key,
          child: Container(
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                aspectRatio: 9 / 10,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
          ),
        );
}

final List<String> nome = ['one piece', 'demon', 'naruto', 'boku no hero']
    .map((itemname) => itemname)
    .toList();

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 200,
                    left: 20,
                    child: Container(
                      child: Text(
                        "Animes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                  ),
                ],
              )),
        ))
    .toList();
