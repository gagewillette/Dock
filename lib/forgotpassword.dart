import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [
        Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: const Text("Forgot password?",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w500
              ))),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: const Text("Contact the marina that opened your account. They will assist you in resetting your login information." ,
            style: TextStyle (
              fontSize: 19,
              fontWeight: FontWeight.w300
            ))
        )
      ],
    ));
  }
}
