import 'package:flutter/material.dart';

Text pageTitleDark(text, alignment) {
  return new Text(
    text,
    textAlign: alignment,
    style: new TextStyle(
      color: Colors.grey,
      fontSize: 26.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Helvetica",
    ),
  );
}
