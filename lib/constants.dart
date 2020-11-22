import 'package:flutter/material.dart';

///////           Gradient page Background

Color gradientStart = Colors.deepPurple[700]; //Change start gradient color here
Color gradientEnd = Colors.purple[500]; //Change end gradient color here

Decoration kGradient = BoxDecoration(
  gradient: new LinearGradient(
      colors: [gradientStart, gradientEnd],
      begin: const FractionalOffset(0.5, 0.0),
      end: const FractionalOffset(0.0, 0.5),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp),
);
