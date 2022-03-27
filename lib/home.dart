import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Home"),
            automaticallyImplyLeading: false,
        centerTitle: true,),


        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.directions_boat), label: "My Dock"),
          BottomNavigationBarItem(icon: Icon(Icons.person) , label: "Account")],

        ),
    );
  }
}
