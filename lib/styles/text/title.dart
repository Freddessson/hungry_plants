import 'package:flutter/material.dart';

Text textTitle(text, alignment) {
  return new Text(
    text,
    textAlign: alignment,
    style: new TextStyle(
      color: Colors.white,
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Helvetica",
    ),
  );
}