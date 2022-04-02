import 'package:dock/homeContent.dart';
import 'package:flutter/material.dart';

import 'forgotpassword.dart';
import 'home.dart';
import 'package:dock/homeContent.dart';

void main() async
{
  homeContent.getWeather();

  runApp(Dock());
}

class Dock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dock - Boating, Simplified",
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController nameCont = TextEditingController();
  TextEditingController passCont = TextEditingController();

  bool isChecked = false;
  bool hasTried = false;

  bool checkLogin(String user, String pass) {

    //TODO: Create db check for username password

    if (pass == "" && user == "") {
      return true;
    } else {
      return false;
    }
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Dock - Boating, Simplified',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameCont,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passCont,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context , MaterialPageRoute(builder: (context) => ForgotPassword()));
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    if (checkLogin(nameCont.text, passCont.text)) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {
                      setState(() {
                        hasTried = true;
                      });
                    }
                    nameCont.clear();
                    passCont.clear();
                  },
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(() {
                  if (hasTried) {
                    return "Your username or password is incorrect!";
                  } else {
                    return "";
                  }
                }(),
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text("Remember my information: ")),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
              )
            ])

            /*
            Row(
              children: <Widget>[
                const Text('Don\'t have an account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),*/
          ],
        ));
  }
}
