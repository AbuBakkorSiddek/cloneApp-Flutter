import 'dart:ui';

import 'package:flutter/material.dart';

class Recharge extends StatefulWidget {
  const Recharge({Key? key}) : super(key: key);

  @override
  _RechargeState createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recharge'),
      ),
      backgroundColor: Colors.red,
      body: Container(
        width: MediaQuery.of(context).size.height * 2.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'You Can Recharge Any Airtel Number From here',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Type any Airtel number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  'Suggested Amount',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '100 BDT',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '300 BDT',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '1000 BDT',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Type recharge amount',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),

              SizedBox(
                height: 15,
              ),

              Expanded(
                  child: Column(
                children: [

                  Row(
                    children: [
                      Expanded(child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child:Center(child: Text('BKASH')),
                        ),
                      ),),

                      Expanded(child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                            child:Center(child: Text('CARD')),),
                      ),),

                      Expanded(child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child:Center(child: Text('BANK')),
                        ),
                      ),),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child:Center(child: Text('ROBI CASH')),
                        ),
                      ),),

                      Expanded(child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child:Center(child: Text('MOBILR BANK')),),
                      ),),

                      Expanded(child: Card(
                        elevation: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child:Center(child: Text('MY WELET')),
                        ),
                      ),),
                    ],
                  )



                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
