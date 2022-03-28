import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dock/homeContent.dart';
import 'package:dock/myDockContent.dart';
import 'package:dock/accountContent.dart';

import 'myDockContent.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions = <Widget>[
    homeContent(),
    myDockContent(),
    accountContent()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: const Text("Home"),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),*/
      body: Center(
        child: widgetOptions.elementAt(selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_boat), label: "My Dock"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
        selectedItemColor: Colors.blue,
        currentIndex: selectedIndex,
        onTap: (int val) {
          setState(() {
            selectedIndex = val;
          });
        },
      ),
    );
  }
}
