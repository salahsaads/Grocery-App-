import 'package:flutter/material.dart';
import 'package:grocery/core/utils/constent.dart';

Color? color1 = Color(0xff71dcff);
Color? color2 = Color.fromARGB(255, 126, 205, 229);
Color? color3 = Color(0xff00C1FE);
bool isdark = true;

/* Color(0xff71dcff),0xff00C1FE
              Color.fromARGB(255, 126, 205, 229),
              Color.fromARGB(255, 126, 205, 229),
              Colors.white,
              Colors.white,
              Color.fromARGB(255, 126, 205, 229),
              Color.fromARGB(255, 126, 205, 229),
              Color(0xff71dcff), */
setmode() {
  isdark ? color1 = Color(0xff71dcff) : Color(0xff121212);
  isdark ? color2 = Color.fromARGB(255, 126, 205, 229) : Color(0xff1E1E1E);
  isdark ? color3 = Color(0xff00C1FE) : Color(0xff008CFF);
}
