// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ItemsCardWithButton extends StatelessWidget {
  final String title;
  final Color color;
  final double cost;
  final VoidCallback onTap;
  const ItemsCardWithButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.cost,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // ElevatedButton(onPressed: () {}, child: Text(cost.toString())),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: color,
              child: Center(
                  child: Text(
                title,
                textAlign: TextAlign.center,
                style: style,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                      color: Colors.white,
                      height: 20,
                      width: 70,
                      child: Center(
                          child: Text(
                        '$cost ₹',
                        style: style,
                      ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
