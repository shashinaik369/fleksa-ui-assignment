// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  final String title;
  final Color color;
  const ItemsCard({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          color: color,
          child: Center(
              child: Text(
            title,
            textAlign: TextAlign.center,
            style: style,
          )),
        ),
      ),
    );
  }
}
