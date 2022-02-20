import 'package:flutter/material.dart';

class YoloPop extends StatefulWidget {
  const YoloPop({Key? key}) : super(key: key);

  @override
  _YoloPopState createState() => _YoloPopState();
}

class _YoloPopState extends State<YoloPop> {
  var internet = 10.0;
  var talktime = 10.0;
  var sms = 10.0;
  var days = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YOLO POP'),
      ),
      backgroundColor: Colors.red,
      body: Container(
        width: MediaQuery.of(context).size.height * 2.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0))),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'YOLO POP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Internet

                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Internet (MB)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 300,
                      child: Slider(
                          max: 40960,
                          min: 0,
                          value: internet.toDouble(),
                          onChanged: (double value) {
                            internet = value;
                            setState(() {});
                          }),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Center(
                          child: Text(
                        '${internet}',
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                  ],
                ),

                //Minute

                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Talk time (Minute)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 300,
                      child: Slider(
                          max: 1000,
                          min: 0,
                          value: talktime.toDouble(),
                          onChanged: (double value) {
                            talktime = value;
                            setState(() {});
                          }),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Center(
                          child: Text(
                        '${talktime}',
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                  ],
                ),

                //SMS

                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'SMS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 300,
                      child: Slider(
                          max: 2500,
                          min: 0,
                          value: sms.toDouble(),
                          onChanged: (double value) {
                            sms = value;
                            setState(() {});
                          }),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Center(
                          child: Text(
                        '${sms}',
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                  ],
                ),

                //Days

                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Validity (Days)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 300,
                      child: Slider(
                          max: 30,
                          min: 0,
                          value: days.toDouble(),
                          onChanged: (double value) {
                            days = value;
                            setState(() {});
                          }),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Center(
                          child: Text(
                        '${days}',
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Card(
              elevation: 10,
              child: Container(
                width: 150,
                height: 400,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'YouPay',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '0 BDT',
                          style: TextStyle(fontSize: 25, color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: Colors.red, width: 2),
                            ),
                            child: Center(
                                child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: Colors.red, width: 2),
                            ),
                            child: Center(
                                child: Text(
                              'Send Gift',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text(
                        'Your selection',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            '2000 MB',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            '2000 Min',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            '2000 SMS',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            '30 days',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),

                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your Balance',style: TextStyle(fontSize: 20,),),

                        Text('0.00 BDT',style: TextStyle(fontSize: 20,)),
                      ],
                    ),

                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Remaining Balance',style: TextStyle(fontSize: 20,),),

                        Text('0.00 BDT',style: TextStyle(fontSize: 20,)),
                      ],
                    ),





                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
