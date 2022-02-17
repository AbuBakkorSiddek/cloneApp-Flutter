import 'package:airtelapp/Saverces/NavigatorPageRoute.dart';
import 'package:airtelapp/pages/Balance/Balance.dart';
import 'package:airtelapp/pages/BuyInternet.dart';
import 'package:airtelapp/pages/BuySms.dart';
import 'package:airtelapp/pages/BuyVoice.dart';
import 'package:airtelapp/pages/Internet/Internet.dart';
import 'package:airtelapp/pages/Lon.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/Recharge.dart';
import 'package:airtelapp/pages/Sms.dart';
import 'package:airtelapp/pages/Voice.dart';
import 'package:airtelapp/pages/myProfile.dart';
import 'package:airtelapp/widget/Homepage/ReusedContainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(




         body: Column(
           children: [

             //Profile

             Card(
               elevation: 5,
               child: Container(
                 width: MediaQuery.of(context).size.height * 1.9,
                 height: 200,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                         bottomLeft: (Radius.elliptical(5, 10)),
                         bottomRight: (Radius.elliptical(5, 10))),
                     color: Colors.white),
                 child: Row(
                   children: [
                     Container(
                       width: 150,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10.0),
                         child: Image.asset(
                           'images/airtel.png',
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Container(
                       height: 100,
                       width: 2,
                       color: Colors.black,
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Container(
                       width: 60,
                       height: 60,
                       child: InkWell(
                         onTap: (){
                           NavigatorPageRoute(context, MyProfile());
                         },
                         child: CircleAvatar(
                             backgroundImage: AssetImage('images/siddek.jpg')),
                       ),
                     ),
                     SizedBox(
                       width: 15,
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 65.0),
                       child: Container(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Column(
                               children: [
                                 Text('Hey you are back',
                                     style:
                                     TextStyle(fontWeight: FontWeight.bold)),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Text('SIDDEK',
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 20.0)),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Text('+8801640382039',
                                     style:
                                     TextStyle(fontWeight: FontWeight.bold)),
                                 SizedBox(
                                   height: 15,
                                 ),
                                 Text('Tap to see points',
                                     style:
                                     TextStyle(fontWeight: FontWeight.bold)),
                               ],
                             ),
                             SizedBox(
                               width: 35,
                             ),
                             Padding(
                               padding: const EdgeInsets.only(bottom: 55),
                               child: Icon(
                                 Icons.arrow_downward_rounded,
                                 size: 25,
                               ),
                             )
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             ),

             //ListView
             Expanded(
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                   ),
                   child: ListView(
                     children: [
                       SizedBox(
                         height: 15,
                       ),

                       Expanded(
                           child: Row(
                             children: [
                               SizedBox(
                                 width: 10,
                               ),
                               Expanded(
                                 child: ReusedContainer(
                                   CardChild: Image.asset(
                                     'images/content1.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width: 10,
                               ),

                               Expanded(
                                 child: ReusedContainer(
                                   CardChild: Image.asset(
                                     'images/content2.png',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width: 10,
                               ),


                               Expanded(
                                 child: ReusedContainer(
                                   CardChild: Image.asset(
                                     'images/content3.jpg',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width: 10,
                               ),
                             ],
                           )),

                       SizedBox(
                         width: 10,
                       ),

                       //Balance,Internet
                       Row(
                         children: [
                           //Balance
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Card(
                                   child: InkWell(
                                     onTap: () {

                                       NavigatorPageRoute(context,Balance());

                                     },
                                     child: Card(
                                       elevation: 5,
                                       child: Container(
                                         width: 200,
                                         height: 250,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(25.0)),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Balance',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 25),
                                             ),
                                             SizedBox(
                                               height: 5,
                                             ),
                                             Image.asset('images/half.png'),
                                             Text(
                                               'Remaining Balance',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                             SizedBox(
                                               height: 5,
                                             ),
                                             Text(
                                               '100.00 BDT',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 20),
                                             ),
                                             SizedBox(
                                               height: 5,
                                             ),
                                             Text(
                                               'Valid 03-03-2022',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 15),
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.all(5.0),
                                               child: Row(
                                                 children: [
                                                   TextButton(
                                                     onPressed: () {
                                                       NavigatorPageRoute(context,Recharge());
                                                     },
                                                     child: Text(
                                                       'Recharge',
                                                       style: TextStyle(
                                                           fontSize: 20,
                                                           color: Colors.red),
                                                     ),
                                                   ),

                                                   Container(
                                                     height: 15,
                                                     width: 2,
                                                     color: Colors.grey,
                                                   ),

                                                   TextButton(
                                                     onPressed: (){
                                                       NavigatorPageRoute(context,Lon());
                                                     },child: Text('Loan',
                                                     style: TextStyle(
                                                         fontSize: 15,
                                                         color: Colors.red),),

                                                   ),
                                                 ],
                                               ),
                                             )
                                           ],
                                         ),
                                       ),
                                     ),
                                   )
                               ),
                             ),
                           ),




                           //Internet
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Card(
                                   child: InkWell(
                                     onTap: (){
                                       NavigatorPageRoute(context,Internet());
                                     },
                                     child: Card(
                                       elevation: 5,
                                       child: Container(
                                         width: 200,
                                         height: 250,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(25.0)),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Internet',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 25),
                                             ),
                                             SizedBox(
                                               height: 7,
                                             ),
                                             Image.asset('images/half.png'),
                                             Text(
                                               'Remaining Internet',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                             SizedBox(
                                               height: 7,
                                             ),
                                             Text(
                                               '1024.00 MB',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 20),
                                             ),
                                             SizedBox(
                                               height: 10,
                                             ),
                                             Text(
                                               '1 Pack active',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 15),
                                             ),

                                             TextButton(
                                               onPressed: (){
                                                 NavigatorPageRoute(context,BuyInternet());
                                               },
                                               child: Text(  'Buy Pack ',
                                                 style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 15,
                                                     color: Colors.red),),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   )),
                             ),
                           ),
                         ],
                       ),

                       //Voice,SMS

                       Row(
                         children: [
                           //Voice
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Card(
                                   child: InkWell(
                                     onTap: (){
                                       NavigatorPageRoute(context,Voice());
                                     },
                                     child: Card(
                                       elevation: 5,
                                       child: Container(
                                         width: 200,
                                         height: 250,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(25.0)),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'Voice',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 25),
                                             ),
                                             SizedBox(
                                               height: 7,
                                             ),
                                             Image.asset('images/half.png'),
                                             Text(
                                               'Remaining Balance',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                             SizedBox(
                                               height: 7,
                                             ),
                                             Text(
                                               '1000 Min',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 20),
                                             ),
                                             SizedBox(
                                               height: 10,
                                             ),
                                             Text(
                                               '1 pack active',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 15),
                                             ),

                                             TextButton(
                                               onPressed: (){
                                                 NavigatorPageRoute(context,BuyVoice());
                                               },
                                               child: Text(  'Buy Pack ',
                                                 style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 15,
                                                     color: Colors.red),),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   )),
                             ),
                           ),

                           //SMS
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Card(
                                   child: InkWell(
                                     onTap: (){
                                       NavigatorPageRoute(context,SMS());
                                     },
                                     child: Card(
                                       elevation: 5,
                                       child: Container(
                                         width: 200,
                                         height: 250,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(25.0)),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text(
                                               'SMS',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 25),
                                             ),
                                             SizedBox(
                                               height: 7,
                                             ),
                                             Image.asset('images/half.png'),
                                             Text(
                                               'Remaining SMS',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                             SizedBox(
                                               height: 7,
                                             ),
                                             Text(
                                               '1000 SMS',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 20),
                                             ),
                                             SizedBox(
                                               height: 10,
                                             ),
                                             Text(
                                               '1 pack active',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 15),
                                             ),

                                             TextButton(
                                               onPressed: (){
                                                 NavigatorPageRoute(context,BuySms());
                                               },
                                               child: Text(  'Buy Pack ',
                                                 style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 15,
                                                     color: Colors.red),),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   )),
                             ),
                           ),

                         ],
                       ),

                       Padding(
                         padding: const EdgeInsets.only(left: 18.0),
                         child: Text('Quick Links',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                       ),

                       SizedBox(
                         height: 10,
                       ),

                       Container(
                         width: 150,
                         height: 250,
                         decoration: BoxDecoration(
                             color: Colors.red
                         ),

                       ),



                       Padding(
                         padding: const EdgeInsets.only(left: 18.0),
                         child: Text('Suggested',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                       ),












                     ],
                   ),
                 )),
           ],
         ),




      ),
    );
  }
}
