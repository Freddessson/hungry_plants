import 'package:flutter/material.dart';

Text textSubTitle(text, alignment) {
  return new Text(
    text,
    textAlign: alignment,
    style: new TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Helvetica",
    ),
  );
}