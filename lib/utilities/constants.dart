// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
    color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'OpenSans', fontSize: 22);

final kLabelStyle = TextStyle(
    color: Color.fromARGB(255, 2, 0, 0),
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
    fontSize: 25);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromARGB(255, 37, 37, 37),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
