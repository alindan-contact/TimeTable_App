import 'package:flutter/material.dart';
import 'package:timetable/Screens/Login/login_screen.dart';
import 'package:timetable/Screens/Welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timetable/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this size provide us total of width and height of our screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/calendar.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            RoundedButton(
              text: "LOG IN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "New to ActiveLife?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const Text(
              "Sign up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
