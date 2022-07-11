import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:assign_four/orderhistory_screen.dart';
import 'package:intl/intl.dart';
import 'order.dart';
import 'about_screen.dart';
import 'orderhistory_screen.dart';

class MyApp extends StatefulWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _peanuts = false;
  var _almonds = false;
  var _strawberries = false;
  var _gummyb = false;
  var _mm = false;
  var _brownies = false;
  var _oreos = false;
  var _marshm = false;
  var totalS = '0.00';
  var size = "Small";
  var flavor = "Vanilla";
  var fudge = 0;
  var oz = "0";

  var totalCost = 0.00;
  var sizeCost = 2.99;
  var fudgeCost = 0.00;

  final List<Order> orders_list = [];



  void calcTotal(bool finished){
   var cost = 0.00;
   var toppings = "";
   totalCost = 0.00;

   try {
     cost += (sizeCost + fudgeCost);


     if (_peanuts == true) {
       cost += 00.15;
       toppings += "Peanuts, ";
     }
     if (_mm == true) {
       cost += 00.25;
       toppings += "M&Ms, ";
     }
     if (_almonds == true) {
       cost += 00.15;
       toppings += "Almonds, ";
     }
     if (_brownies == true) {
       cost += 00.20;
       toppings += "Brownies, ";
     }
     if (_strawberries == true) {
       cost += 00.20;
       toppings += "Strawberries, ";
     }
     if (_oreos == true) {
       cost += 00.20;
       toppings += "Oreos, ";
     }
     if (_gummyb == true) {
       cost += 00.20;
       toppings += "Gummy Bears, ";
     }
     if (_marshm == true) {
       cost += 00.15;
       toppings += "Marshmellows, ";
     }

   } catch (NumberFormatException) {
     if (_peanuts == true) {
       cost += 00.15;
       toppings += "Peanuts, ";
     }
     if (_mm == true) {
       cost += 00.25;
       toppings += "M&Ms, ";
     }
     if (_almonds == true) {
       cost += 00.15;
       toppings += "Almonds, ";
     }
     if (_brownies == true) {
       cost += 00.20;
       toppings += "Brownies, ";
     }
     if (_strawberries == true) {
       cost += 00.20;
       toppings += "Strawberries, ";
     }
     if (_oreos == true) {
       cost += 00.20;
       toppings += "Oreos, ";
     }
     if (_gummyb == true) {
       cost += 00.20;
       toppings += "Gummy Bears, ";
     }
     if (_marshm == true) {
       cost += 00.15;
       toppings += "Marshmellows, ";
     }

    } finally {

    totalCost = cost;
    totalS = cost.toStringAsFixed(2);

    }

    toppings += "and $oz oz fudge.";
    if (finished == true){
      submitOrder(toppings);
    }
}

void resetEntries(){

    setState(() {

      fudgeCost = 0.00;
      fudge = 0;
      oz = "0";
      size = 'Small';
      sizeCost = 2.99;
      _peanuts = false;
      _mm = false;
      _almonds = false;
      _brownies = false;
      _strawberries = false;
      _oreos = false;
      _gummyb = false;
      _marshm = false;
      totalS = '0.00';
      flavor = "Vanilla";

    });

}

  void theWorks(){

    setState(() {

      fudge = 3;
      fudgeCost = 0.30;
      oz = "3";
      size = 'Large';
      sizeCost = 4.99;
      _peanuts = true;
      _mm = true;
      _almonds = true;
      _brownies = true;
      _strawberries = true;
      _oreos = true;
      _gummyb = true;
      _marshm = true;

    });

    calcTotal(false);

  }

  void submitOrder(String toppings){
    var _datatime = DateFormat("EEEEE, MMMM dd, yyyy hh:mm:ss a").format(DateTime.now());
    orders_list.add(Order(_datatime, flavor,toppings, ('\$' + totalCost.toStringAsFixed(2))));
  }


  @override
  Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
              title: const Text("Ice Cream Sundae"),
              actions: [
                PopupMenuButton(
                  onSelected: (choice){
                    if (choice == 'Order History'){
                      Navigator.push( context,
                        MaterialPageRoute(builder: (context) => OrderHistoryScreen(
                          orders: orders_list,
                        )
                        ),
                      );
                    } else if (choice == 'About') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutScreen(),
                        ),
                      );
                    }
                  },
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        child: Text('Order History'),
                        value: 'Order History',
                      ),
                      const PopupMenuItem(
                        child: Text('About'),
                        value: 'About',
                      ),
                    ];
                  },
                ),

              ],
            ),
            body: SafeArea(
              child: Center(
                child: Column (
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                        const Expanded (
                         child: Text(
                          'Sundae Maker',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold,
                           fontSize: 28.0),
                        ),
                        ),
                    const Spacer(),
                  Text(
                    "\$$totalS",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                    const Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        const Padding (
                          padding:
                          EdgeInsetsDirectional.fromSTEB(0, 0, 10.0, 0),
                         child: Text(
                          'Size: ',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                         ),
                       ),
                        DropdownButton(
                            items: const [
                              DropdownMenuItem(
                                child: Text('Small'),
                                value: "Small",
                              ),
                              DropdownMenuItem(
                                child: Text('Medium'),
                                value: "Medium",
                              ),
                              DropdownMenuItem(
                                child: Text('Large'),
                                value: "Large",
                              )
                            ],
                            value: size,
                            onChanged: (String? str){
                              setState(() {
                                size = str!;

                                if (size == 'Medium'){
                                  sizeCost = 3.99;
                                }
                                else if (size == 'Large'){
                                  sizeCost = 4.99;
                                } else {
                                  sizeCost = 2.99;
                                }

                                calcTotal(false);

                              });
                            }),
                      ]
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding (
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 10.0, 0),
                           child: Text(
                            'Flavor: ',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          ),
                          DropdownButton(
                              items: const [
                                DropdownMenuItem(
                                  child: Text('Vanilla'),
                                  value: "Vanilla",
                                ),
                                DropdownMenuItem(
                                  child: Text('Chocolate'),
                                  value: "Chocolate",
                                ),
                                DropdownMenuItem(
                                  child: Text('Strawberry'),
                                  value: "Strawberry",
                                )
                              ],
                              value: flavor,
                              onChanged: (String? str){
                                setState(() {
                                  flavor = str!;
                                });
                              }),
                        ]
                    ),
                    const Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded (
                          child: Column (
                           children: [
                             CheckboxListTile(
                              value: _peanuts,
                              onChanged: (bool? val) {
                                setState(() {
                                  _peanuts = val!;
                                  calcTotal(false);
                                });
                              },
                              title: Text('Peanuts'),
                            ),
                             CheckboxListTile(
                               value: _almonds,
                               onChanged: (bool? val) {
                                 setState(() {
                                   _almonds = val!;
                                   calcTotal(false);
                                 });
                               },
                               title: Text('Almonds'),
                             ),
                             CheckboxListTile(
                               value: _strawberries,
                               onChanged: (bool? val) {
                                 setState(() {
                                   _strawberries = val!;
                                   calcTotal(false);
                                 });
                               },
                               title: Text('Strawberries'),
                             ),
                             CheckboxListTile(
                               value: _gummyb,
                               onChanged: (bool? val) {
                                 setState(() {
                                   _gummyb = val!;
                                   calcTotal(false);
                                 });
                               },
                               title: Text('Gummy Bears'),
                             ),
                          ]
                        ),
                        ),
                        Expanded (
                         child: Column (
                            children: [
                              CheckboxListTile(
                                value: _mm,
                                onChanged: (bool? val) {
                                  setState(() {
                                    _mm = val!;
                                    calcTotal(false);
                                  });
                                },
                                title: Text('M&Ms'),
                              ),
                              CheckboxListTile(
                                value: _brownies,
                                onChanged: (bool? val) {
                                  setState(() {
                                    _brownies = val!;
                                    calcTotal(false);
                                  });
                                },
                                title: Text('Brownies'),
                              ),
                              CheckboxListTile(
                                value: _oreos,
                                onChanged: (bool? val) {
                                  setState(() {
                                    _oreos = val!;
                                    calcTotal(false);
                                  });
                                },
                                title: Text('Oreos'),
                              ),
                              CheckboxListTile(
                                value: _marshm,
                                onChanged: (bool? val) {
                                  setState(() {
                                    _marshm = val!;
                                    calcTotal(false);
                                  });
                                },
                                title: Text('Marshmellows'),
                              ),
                            ]
                         ),
                        ),
                      ]
                    ),
                    const Spacer(),
                    Padding (
                      padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0, 12.0, 0),
                     child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Fudge: ',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Flexible (
                        child: Slider(
                          value: fudge.toDouble(),
                          min: 0.0,
                          max: 3.0,
                          label: fudge.toString(),
                          onChanged: (double val){
                            setState(() {
                              fudge = val.toInt();
                              oz = val.toInt().toString();

                              if (fudge == 1){
                                fudgeCost = 0.15;
                              } else if (fudge == 2){
                                fudgeCost = 0.25;
                              } else if (fudge == 3){
                                fudgeCost = 0.30;
                              } else {
                                fudgeCost = 0.00;
                              }
                              calcTotal(false);
                            });
                          },
                        ),
                        ),
                        Text(
                          '$oz oz',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ]
                    ),
                    ),
                    const Spacer(),
                    Row (
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          onPressed: () {
                            theWorks();
                          },
                          child: const Text('The Works'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          onPressed: () {
                            resetEntries();
                          },
                          child: const Text('Reset'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          onPressed: () {
                            
                            Fluttertoast.showToast(
                                msg: 'Your sundae is on the way. Enjoy!',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.SNACKBAR,
                                timeInSecForIosWeb: 3,
                            );
                            calcTotal(true);
                            resetEntries();

                          },
                          child: const Text('Order'),
                        ),
                      ]
                    ),
                    const Spacer(),
                  ]
                ),
                ),
              ),
    );
  }
}

