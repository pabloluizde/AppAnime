import 'package:criatividade/pages/home/components/row_list.dart';
import 'package:flutter/material.dart';

class ContainerScroll extends Container {
  ContainerScroll({Key? key, Widget? defaultname})
      : super(
          key: key,
          height: 500,
          color: Color.fromARGB(255, 12, 12, 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Padding(padding: const EdgeInsets.all(8.0), child: defaultname),
          ),
        );
}
