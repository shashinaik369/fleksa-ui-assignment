// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fleksa_ui_assignment/screens/widgets/container.dart';
import 'package:flutter/material.dart';

class TabIcons extends StatefulWidget {
  const TabIcons({Key? key}) : super(key: key);

  @override
  State<TabIcons> createState() => _TabIconsState();
}

class _TabIconsState extends State<TabIcons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 40,
            ),
            container(Icon(Icons.broadcast_on_personal), Colors.white),
            SizedBox(
              height: 20,
            ),
            container(Icon(Icons.chair), Colors.white),
            SizedBox(
              height: 20,
            ),
            container(
                Icon(
                  Icons.desk,
                  color: Colors.yellow,
                ),
                Colors.black),
            SizedBox(
              height: 20,
            ),
            container(Icon(Icons.window), Colors.white),
          ],
        ),
        Column(
          children: [
            container(Icon(Icons.exit_to_app), Colors.white),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}
