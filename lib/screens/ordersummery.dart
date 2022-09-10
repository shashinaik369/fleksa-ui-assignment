// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:fleksa_ui_assignment/model/itemsummary_model.dart';

import 'widgets/container.dart';

class OrderSummery extends StatefulWidget {
  double totalMoney;

  int counter;
  int index;
  List<ItemSumModel> itemList;

  OrderSummery({
    Key? key,
    required this.totalMoney,
    required this.counter,
    required this.index,
    required this.itemList,
  }) : super(key: key);

  @override
  State<OrderSummery> createState() => _OrderSummeryState();
}

class _OrderSummeryState extends State<OrderSummery> {
  final summerySize = 20.0;
  final totalmoneySize = 30.0;
  String itemName = '';
  int increase1 = 1;

  increaseByOne(int index) {
    if (widget.itemList[index].itemName == widget.itemList[index].itemName) {
      increase1 = increase1 + 1;
    }
  }

  final totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Summary',
                    style: TextStyle(
                        fontSize: summerySize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' ${widget.totalMoney.toStringAsFixed(2)} ₹',
                    style: TextStyle(
                        fontSize: totalmoneySize, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: widget.itemList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.itemList[index].counter} x  ${widget.itemList[index].itemName}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                Text(
                                  '${(widget.itemList[index].itemCost * widget.itemList[index].counter).toStringAsFixed(2)} ₹',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        width: 20, child: Icon(Icons.edit)),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          widget.totalMoney = widget
                                                  .totalMoney -
                                              widget.itemList[index].itemCost *
                                                  widget
                                                      .itemList[index].counter;

                                          widget.itemList.removeAt(index);
                                        });
                                      },
                                      child: Container(
                                        width: 20,
                                        child: Icon(
                                          Icons.delete_outline,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  })
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  container1(
                      color: Colors.white,
                      borderColor: Colors.black,
                      title: 'BACK',
                      textColor: Colors.black),
                  SizedBox(
                    width: 20,
                  ),
                  container1(
                      color: Colors.white,
                      borderColor: Colors.green,
                      title: 'SPLIT PAY',
                      textColor: Colors.black),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  container1(
                      color: Colors.white,
                      borderColor: Colors.black,
                      title: 'CANCEL',
                      textColor: Colors.red),
                  SizedBox(
                    width: 20,
                  ),
                  container1(
                      color: Colors.green,
                      borderColor: Colors.green,
                      title: 'PAY',
                      textColor: Colors.white),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
