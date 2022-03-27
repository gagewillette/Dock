import 'package:flutter/material.dart';

class homeContent extends StatefulWidget
{
  @override
  State<homeContent> createState() => _homeContent();
}

class _homeContent extends State<homeContent>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Home")));
  }
  
}