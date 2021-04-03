import 'package:flutter/material.dart';

import 'homePage.dart';
import 'loginApp.dart';
import 'contaApp.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => LoginApp(),
        '/home': (context) => MyHomePage(),
        '/menu': (context) => MenuApp(),
      },
    );
  }
}
