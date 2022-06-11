import 'package:flutter/material.dart';

import 'components/container_scroll.dart';
import 'components/row_list.dart';
import 'components/row_list_top10.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 12, 12),
          automaticallyImplyLeading: false,
          title: Text("ANIMES APP"),
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ContainerScroll(
                  defaultname: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 20.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Top 10',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 20.0),
                          child: MenuCar()),
                      Container(
                          margin: EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 20.0),
                          child: RowTop10()),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              child: MenuCar(),
            ),
          ],
        ));
  }
}
