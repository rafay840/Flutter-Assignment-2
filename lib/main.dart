import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/loginScreen.dart';
import 'screen/SignupScreen.dart';

void main() => runApp(FirstProject());

class FirstProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      title: 'First Project Internship',
      home: loginScreen(),
    );
  }
}

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Second Screen Internship',
//       home: SecondScreen(),
//     );
//   }
// }
