import 'package:flutter/material.dart';
import 'package:timetable/Screens/Login/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timetable/components/rounded_button.dart';
import 'package:timetable/constants.dart';
import 'package:timetable/components/text_field_container.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_input_file.dart';
import '../../../components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputFile(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(text: "LOGIN", press: () {}),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(press: () {}),
        ],
      ),
    );
  }
}
