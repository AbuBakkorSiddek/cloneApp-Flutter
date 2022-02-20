import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UtilityBill extends StatefulWidget {
  const UtilityBill({Key? key}) : super(key: key);

  @override
  _UtilityBillState createState() => _UtilityBillState();
}

class _UtilityBillState extends State<UtilityBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Utility Bill'),
      ),
      backgroundColor: Colors.red,
      body: Container(
        width: MediaQuery.of(context).size.height * 2.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0))),

        child: Column(
          children: [

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/si.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'RobiCash User',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      Text(
                        '+8801640382039',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      Text(
                        'Tap to show balance',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            ),



             Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                       Row(children: [
                        Icon(FontAwesomeIcons.bolt),
                         SizedBox(width: 10,),
                        Text('BPDB',style: TextStyle(fontSize: 20,),),
                      ],),

                    Icon(FontAwesomeIcons.arrowRight)




                  ],
                ),
              ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(children: [
                    Icon(FontAwesomeIcons.bolt),
                    SizedBox(width: 10,),
                    Text('BPDB Smart Meter',style: TextStyle(fontSize: 20,),),
                  ],),

                  Icon(FontAwesomeIcons.arrowRight)




                ],
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(children: [
                    Icon(FontAwesomeIcons.bolt),
                    SizedBox(width: 10,),
                    Text('BPDB Prepaid',style: TextStyle(fontSize: 20,),),
                  ],),

                  Icon(FontAwesomeIcons.arrowRight)




                ],
              ),
            ),

            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(children: [
                    Icon(FontAwesomeIcons.bolt),
                    SizedBox(width: 10,),
                    Text('WZPDCL',style: TextStyle(fontSize: 20,),),
                  ],),

                  Icon(FontAwesomeIcons.arrowRight)




                ],
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(children: [
                    Icon(FontAwesomeIcons.bolt),
                    SizedBox(width: 10,),
                    Text('DESCO',style: TextStyle(fontSize: 20,),),
                  ],),

                  Icon(FontAwesomeIcons.arrowRight)




                ],
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(children: [
                    Icon(FontAwesomeIcons.bolt),
                    SizedBox(width: 10,),
                    Text('CWASA',style: TextStyle(fontSize: 20,),),
                  ],),

                  Icon(FontAwesomeIcons.arrowRight)




                ],
              ),
            ),


            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(children: [
                    Icon(FontAwesomeIcons.bolt),
                    SizedBox(width: 10,),
                    Text('DWASA',style: TextStyle(fontSize: 20,),),
                  ],),

                  Icon(FontAwesomeIcons.arrowRight)




                ],
              ),
            ),


            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(children: [
                    Icon(FontAwesomeIcons.bolt),
                    SizedBox(width: 10,),
                    Text('Jalalabad Gas',style: TextStyle(fontSize: 20,),),
                  ],),

                  Icon(FontAwesomeIcons.arrowRight)




                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
