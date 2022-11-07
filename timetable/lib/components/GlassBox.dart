import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  const GlassBox({ Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 200,
     height: 200,
      child: Stack(
        children: [
          BackdropFilter(filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.3),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}