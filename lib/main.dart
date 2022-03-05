import 'package:flutter/material.dart';
import 'package:hackerton/screens/InterestScreen.dart';
import 'package:hackerton/screens/authentication.dart';
import 'package:hackerton/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MitUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const Authentication(),
        "/create-interest": (context) => const InterestScreen(),
        "/home-page": (context) => const HomePageScreen()
      },
    );
  }
}
