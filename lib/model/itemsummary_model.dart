class ItemSumModel {
  String itemName;
  double itemCost;
  int counter;

  ItemSumModel({
    required this.itemName,
    required this.itemCost,
    required this.counter,
  });

  increamentCount() {
    counter++;
  }
}
