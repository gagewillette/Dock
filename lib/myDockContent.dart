import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class myDockContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _myDockContent();
}

class _myDockContent extends State<myDockContent> {
  String name = '', email = '';

  int index = 0;

  List<int> colorCodes = <int>[500, 700];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.fromLTRB(0, 70, 0, 0)),
        Container(
          alignment: Alignment.center,
          child: const TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'Name'),
          ),
        ),
        const Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 20)),
        Container(
          alignment: Alignment.center,
          child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email")),
        ),
        const Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 20)),
        TextButton(
          onPressed: submitPress,
          child: const Text("Submit!"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.lightBlue[index],
          ),
          onHover: (val) {
            if (val)
              {

              }
          },
        )
      ],
    );
  }

  void submitPress() {
    print("Submit press");
  }
}
