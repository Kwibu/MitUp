import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:hackerton/screens/loginscreen.dart';
import 'package:hackerton/screens/signUpScreen.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: double.infinity,
              child: Row(
                children: const [
                  Text(
                    'Mit',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(161, 103, 165, 1)),
                  ),
                  Text(
                    'Up',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(74, 48, 109, 1)),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.8,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ContainedTabBarView(
                tabBarProperties: const TabBarProperties(
                    labelColor: Color.fromRGBO(74, 48, 109, 1),
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Color.fromRGBO(74, 48, 109, 1)),
                tabs: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Login',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Sign Up",
                    ),
                  ),
                ],
                views: const [
                  LoginScreen(),
                  SignUpScreen(),
                ],
                // ignore: avoid_print
                onChange: (index) => print(index),
                initialIndex: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
