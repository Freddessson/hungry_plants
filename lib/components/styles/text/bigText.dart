import 'package:flutter/material.dart';

Text bigText(text, alignment) {
  return new Text(
    text,
    textAlign: alignment,
    style: new TextStyle(
      color: Colors.white,
      fontSize: 60.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Helvetica",
    ),
  );
}