import 'package:flutter/material.dart';
import 'package:dock/popup.dart';

class accountContent extends StatefulWidget {
  const accountContent({Key? key}) : super(key: key);

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
    var lv = ListView.separated(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            color: Colors.lightBlue[colorCodes[index]],
            height: 100,
            child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: Text(entries[index]),
                          content: const Text("Okay buddy"),
                        actions: [
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () => Navigator.pop(context),
                          )
                        ],
                      ));
                },
                child: Text(entries[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Open-Sans',
                        fontWeight: FontWeight.w400))));
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(indent: 3),
    );
    return lv;
  }
}
