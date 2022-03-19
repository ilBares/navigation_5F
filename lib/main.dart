import 'package:flutter/material.dart';
import 'package:navigation_5f/screens/second_screen.dart';
import 'screens/first_screen.dart';

void main() => runApp(MainApp());

/*
  StatelessWidget contentente solo una Material App con "initialRoute" e
  "routes" definiti.
  "initialRoute" sostituisce "home"
 */
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // indica qual è la prima route - all'avvio
      // indicando initialRoute il campo body deve rimanere vuoto
      initialRoute: '/',

      // elenco delle varie "routes" - ovvero dei vari Widget "Screen"
      routes: {
        // '/' e '/second' indicano il nome dello screen
        // il significato di questa istruzione è:
        // nel mio "context" apri la "FirstScreen"
        '/': (context) => const FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

