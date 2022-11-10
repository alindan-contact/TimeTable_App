import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timetable/Screens/Login/login_screen.dart';
import 'package:timetable/Screens/Signup/components/background.dart';
import 'package:timetable/Screens/Signup/components/ordevider.dart';
import 'package:timetable/components/already_have_an_account_check.dart';
import 'package:timetable/components/rounded_button.dart';
import 'package:timetable/components/rounded_input_file.dart';
import 'package:timetable/components/rounded_password_field.dart';
import 'package:timetable/constants.dart';
import 'package:timetable/Screens/Signup/components/social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputFile(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
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
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(iconSrc: "assets/icons/facebook.svg", press: () {}),
              SocialIcon(iconSrc: "assets/icons/twitter.svg", press: () {}),
              SocialIcon(iconSrc: "assets/icons/google-plus.svg", press: () {}),
            ],
          )
        ],
      ),
    );
  }
}
