import 'package:flutter/material.dart';
import 'package:timetable/components/text_field_container.dart';
import 'package:timetable/constants.dart';

class RoundedInputFile extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFile({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryLightColor),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}


