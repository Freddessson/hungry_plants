

import 'package:flutter/material.dart';

Color getDynamicColor(int percent) {
  // 169, 207, 84
  // r g b
  int r = 255 - percent;

  var color = Color.fromARGB(255, r, 207, 84);
  return color;
}