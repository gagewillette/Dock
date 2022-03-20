// ignore_for_file: prefer_const_constructors, unused_import
// ignore: use_key_in_widget_constructors
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(Dock());

// ignore: use_key_in_widget_constructors
class Dock extends StatefulWidget {
  @override
  State<Dock> createState() => _DockState();
}

class _DockState extends State<Dock> {
  // ignore: unused_field
  int _selectedIndex = 0;

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dock -  Boating, Simplfied",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dock"),
          backgroundColor: Colors.lightBlue,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color.fromARGB(255, 7, 177, 255)),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_boat),
                label: "Schedule Drop",
                backgroundColor: Color.fromARGB(255, 0, 145, 212)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Account",
                backgroundColor: Color.fromARGB(255, 0, 118, 173))
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onTappedItem,
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}
