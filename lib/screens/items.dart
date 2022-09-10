// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:fleksa_ui_assignment/model/itemsummary_model.dart';
import 'package:fleksa_ui_assignment/screens/widgets/itemscard.dart';
import 'package:fleksa_ui_assignment/screens/widgets/itemscardwithbutton.dart';
import 'package:flutter/material.dart';

import 'ordersummery.dart';

class Items extends StatefulWidget {
  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List<ItemSumModel> itemSumModelList = <ItemSumModel>[];
  List<double> totalsubAm = <double>[];
  int itemCounter = 0;
  double totalMoney = 0;
  int _index = 0;

  List<Color> color1 = [
    Colors.cyan,
    Colors.cyan,
    Colors.cyan,
    Colors.cyan,
    Colors.teal,
    Colors.teal,
    Colors.teal,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.amber,
    Colors.amber,
    Colors.amber,
    Colors.amber,
    Colors.amber,
    Colors.pink,
    Colors.pink,
    Colors.pink,
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.purple,
    Colors.purple,
    Colors.purple,
  ];

  List<Color> colors = [
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.amber,
    Colors.pink,
    Colors.orange,
    Colors.blue,
    Colors.purple,
    Colors.grey,
    Colors.indigo,
    Colors.lime,
    Colors.red,
    Colors.blueGrey,
    Colors.redAccent,
    Colors.cyanAccent,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.amberAccent,
    Colors.greenAccent,
    Colors.limeAccent,
    Colors.lightGreen,
    Colors.lightBlue,
  ];

  List<String> upperItems = [
    'Mittags-Angebot',
    'Angebot',
    'Kindergeri chte',
    'Salate',
    'Pizza',
    'Pizzabroic hen & Co.',
    'Wunsch-pizza',
    'Salate',
    'Pizza',
    'Snacks',
    'Cheesy Fries',
    'Mittags-Angebot',
    'Angebot',
    'Kindergeri chte',
    'Salate',
    'Pizza',
    'Pizzabroic hen & Co.',
    'Wunsch-pizza',
    'Salate',
    'Pizza',
    'Snacks',
    'Cheesy Fries',
  ];

  List<String> itemName = [
    'Pizza Mittagsan gebot',
    'Salat Mittagsan gebot',
    'Burger Mittagsan gebot',
    'Cheesy Fries Mittagsan gebot',
    'Schnitzel menu',
    'Mini Angebot',
    'Smart Angebot',
    'Maxi Angebot',
    'Pasta Angebot',
    'Burger Angebot',
    'Burger Pizz Angebot',
    'Pizza Salate',
    'Burger Salate',
    'Fries Salate',
    'Chicken Salate',
    'Se Salate',
    'Max Salate',
    'Ultra Salate',
    'Pepporoni Pizza',
    'Peri Peri Pizza',
    'Mexican Pizza',
    'Cheese Pizza',
    'Chicken Biryani',
    'Mutton Biryan',
    'Prawns Biryani',
    'Egg Biryani',
    'Chicken Burger',
    'Veg Burger',
    'Shawarma',
    'Veg Shamwarma',
    'NonVeg Shawarma',
  ];

  List<double> itemCost = <double>[
    6.99,
    6,
    5.9,
    4.9,
    6.99,
    6,
    5.9,
    4.9,
    6,
    5.9,
    4.9,
    6.99,
    6,
    5.9,
    4.9,
    6.99,
    6,
    5.9,
    4.9,
    6,
    5.9,
    6.99,
    6,
    5.9,
    4.9,
    6.99,
    6,
    5.9,
    6.99,
    6,
    5.9,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: upperItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 9),
                        itemBuilder: (context, index) {
                          return ItemsCard(
                              title: upperItems[index], color: colors[index]);
                        }),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: itemName.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 9),
                        itemBuilder: (context, index) {
                          return ItemsCardWithButton(
                            title: itemName[index],
                            color: color1[index],
                            cost: itemCost[index],
                            onTap: () {
                              setState(() {
                                _index = index;

                                add(index);
                                if (itemSumModelList.isEmpty ||
                                    itemSumModelList.isNotEmpty) {
                                  if (itemSumModelList.isEmpty) {
                                    itemCounter = 1;
                                    itemSumModelList.add(
                                      ItemSumModel(
                                        itemName: itemName[index],
                                        itemCost: itemCost[index],
                                        counter: itemCounter,
                                      ),
                                    );
                                  } else {
                                    if (itemSumModelList.any((element) =>
                                        element.itemName == itemName[index])) {
                                      itemSumModelList[index].increamentCount();
                                    } else {
                                      itemCounter = 1;

                                      itemSumModelList.add(
                                        ItemSumModel(
                                            itemName: itemName[index],
                                            itemCost: itemCost[index],
                                            counter: itemCounter),
                                      );
                                    }
                                  }
                                }
                              });
                            },
                          );
                        }),
                  ],
                )
              ],
            ),
          ),
          VerticalDivider(
            thickness: 1,
          ),
          Expanded(
              flex: 3,
              child: OrderSummery(
                totalMoney: totalMoney,
                itemList: itemSumModelList,
                counter: itemCounter,
                index: _index,
              )),
        ],
      ),
    );
  }

  void add(int index1) {
    totalMoney = totalMoney + itemCost[index1];
  }
}
