import 'package:flutter/material.dart';

Text defaultText(text, alignment) {
  return new Text(
    text,
    textAlign: alignment,
    style: new TextStyle(
      color: Colors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Helvetica",
    ),
  );
}