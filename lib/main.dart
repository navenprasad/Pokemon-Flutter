import 'package:flutter/material.dart';
// import './screens/welcome_screen.dart';
import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.id,
      routes: {
        // WelcomeScreen.id : (context) => WelcomeScreen(),
        Home.id : (context) => Home(),
      },
    );
  }
}