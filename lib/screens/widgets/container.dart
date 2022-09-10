// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget container(
  Icon icon,
  Color color,
) {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6.0)],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        color: color),
    child: icon,
  );
}

Widget container1({
  required Color color,
  required String title,
  required Color borderColor,
  required Color textColor,
}) {
  return Container(
    height: 60,
    width: 180,
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: color,
      border: Border.all(width: 2, color: borderColor),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16.0, color: textColor, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
