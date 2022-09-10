// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fleksa_ui_assignment/screens/items.dart';
import 'package:fleksa_ui_assignment/screens/tabicons.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        actions: [
          Center(child: Text('Accepting orders')),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.refresh),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.settings),
          SizedBox(
            width: 40,
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: TabIcons(),
          ),
          Expanded(
            flex: 10,
            child: Items(),
          ),
        ],
      ),
    );
  }
}
