import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({Key? key}) : super(key: key);

  @override
  _CustomerServiceState createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Service'),
      ),
      backgroundColor: Colors.red,
      body: Container(
        width: MediaQuery.of(context).size.height * 2.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0)),
            color: Colors.white),
        child: ListView(
          children: [
            Container(
              width: 550,
              height: 200,
              margin: EdgeInsets.all(20.0),
              color: Colors.red,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'How to we help you today?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Tap to Take Support To Resolve Your Problems',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 140,
                  height: 50,
                  child: Row(
                    children: [
                      Text('Take Support'),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Check Complaint Status',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 10,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('You can also contact us through',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),



            SizedBox(
              height: 20,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.red,
                              size: 35,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'WhatsApp',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      )),


                      SizedBox(width: 15,),

                      Expanded(
                          child: Container(
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.comments,
                              color: Colors.red,
                              size: 35,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Chat',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.envelope,
                                  color: Colors.red,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Email',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          )),


                      SizedBox(width: 15,),

                      Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                 Icons.phone,
                                  color: Colors.red,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Phone',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),


                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.red,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Store Locator',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          )),


                      SizedBox(width: 15,),

                      Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.facebookMessenger,
                                  color: Colors.red,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Messenger',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),





                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
