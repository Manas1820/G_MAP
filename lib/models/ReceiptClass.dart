class Item {
  String name;
  num totalCost;
  num unitCost;
  int quantity;

  Item(String name, num totalCost, num unitCost, int quantity) {
    this.name = name;
    this.totalCost = totalCost;
    this.unitCost = unitCost;
    this.quantity = quantity;
  }
}

class ReceiptInfo {
  num finalTotal;
  num finalTax;

  ReceiptInfo(List items, num finalTotal, num finalTax) {
    this.finalTotal = finalTotal;
    this.finalTax = finalTax;
  }
}
