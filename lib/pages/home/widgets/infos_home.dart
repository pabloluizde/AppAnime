import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'infos_row.dart';

class HomeInfosPage extends StatefulWidget {
  @override
  _HomeInfosPageState createState() => _HomeInfosPageState();
}

class _HomeInfosPageState extends State<HomeInfosPage> {
  double speed = 2.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 33, 33),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RowInfosPage(),
                            ]),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1000,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
