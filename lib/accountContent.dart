import 'package:flutter/material.dart';

class accountContent extends StatefulWidget {
  @override
  State<accountContent> createState() => _accountContent();
}

class _accountContent extends State<accountContent> {
  final List<String> entries = <String>['Username', 'Password', 'About'];
  final List<int> colorCodes = <int>[
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100
  ];

  @override
  Widget build(BuildContext context) {
    var lv = ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            color: Colors.lightBlue[colorCodes[index]],
            height: 100,
            child: TextButton(
                onPressed: () {
                  print(index.toString() + " was pressed");
                },
                child: Text(entries[index] , style: const TextStyle(color: Colors.white))));
      },
    );
    return Container(padding: const EdgeInsets.fromLTRB(0, 30, 0, 0), child: lv);
  }
}
