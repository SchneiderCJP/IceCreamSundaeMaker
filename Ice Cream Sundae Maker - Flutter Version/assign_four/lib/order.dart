class Order {
  final String _date;
  final String _flavor;
  final String _toppings;
  final String _cost;

  Order(this._date, this._flavor, this._toppings, this._cost);

  @override

  String toString(){
    return "Date & Time: $_date \nFlavor: $_flavor \nToppings: $_toppings \nCost: $_cost";
  }

}