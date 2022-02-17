import 'package:airtelapp/Saverces/NavigatorPageRoute.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/Binge.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/Recharge.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/RechargeHistory.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/Spendcontrol.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/TransferBalance.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/UsageHistory.dart';
import 'package:airtelapp/pages/Balance/AccountDashBoard/YoloPop.dart';
import 'package:airtelapp/widget/Balance/QuickCardLinks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Dashboard'),
      ),
      backgroundColor: Colors.red,
      body: Container(
        width: MediaQuery.of(context).size.height * 2.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0)),
            color: Colors.white),
        child: Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 15),
                child: Card(
                  elevation: 15,
                  color: Colors.white,
                  child: Container(
                    width: 80,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    child: Column(
                      children: [
                        //cil & account summary
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(right: (38.0)),
                              child: Container(
                                  width: 150,
                                  height: 120,
                                  child: Image.asset(
                                    'images/cil.png',
                                  )),
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 35),
                                  child: Container(
                                    width: 170,
                                    height: 120,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Account Summary',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 05,
                                        ),
                                        Text(
                                          'Current Balance',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          '100.00 BDT',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Valid till 03 March 2020',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //taka
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 90,
                              height: 50,
                              color: Colors.white,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('100 Tk')),
                            ),
                            Container(
                              width: 90,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('100 Tk')),
                            ),
                            Container(
                              width: 90,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('100 Tk')),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //recharge button

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () {
                                    NavigatorPageRoute(context, Recharge());
                                  },
                                  child: Text(
                                    'Recharge',
                                    style: TextStyle(fontSize: 25),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Quick Links',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 15),
                child: Card(
                  elevation: 15,
                  color: Colors.white,
                  child: Container(
                    width: 80,
                    height: 520,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        InkWell(
                          onTap: (){
                            NavigatorPageRoute(context, RechargeHis());
                          },
                          child: QuickCard(
                            title: 'Recharge History',
                            iconData: Icons.arrow_forward_ios,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(height: 5,color: Colors.grey,),
                        ),


                        InkWell(
                          onTap: (){
                            NavigatorPageRoute(context, Usagehistory());
                          },
                          child: QuickCard(
                            title: 'Usage History',
                            iconData: Icons.arrow_forward_ios,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(height: 5,color: Colors.grey,),
                        ),

                        InkWell(
                          onTap: (){
                            NavigatorPageRoute(context, TransferBalance());
                          },
                          child: QuickCard(
                            title: 'Transfer Balance',
                            iconData: Icons.arrow_forward_ios,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(height: 5,color: Colors.grey,),
                        ),

                        InkWell(
                          onTap: (){
                            NavigatorPageRoute(context, SpendControl());
                          },
                          child: QuickCard(
                            title: 'Spend control',
                            iconData: Icons.arrow_forward_ios,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(height: 5,color: Colors.grey,),
                        ),

                        InkWell(
                          onTap: (){
                            NavigatorPageRoute(context, YoloPop());
                          },
                          child: QuickCard(
                            title: 'YOLO POP',
                            iconData: Icons.arrow_forward_ios,
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(height: 5,color: Colors.grey,),
                        ),



                        InkWell(
                          onTap: (){
                            NavigatorPageRoute(context, Binge());
                          },
                          child: QuickCard(
                            title: 'Binge',
                            iconData: Icons.arrow_forward_ios,
                          ),
                        ),

                        SizedBox(
                          height: 05,
                        )



                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  'Offers',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Expanded(child: Column(
                 children: [
                   Row(
                     children: [

                       Expanded(child:
                       InkWell(
                         onTap:   (){},
                         child: Card(
                           elevation: 15,
                           child: Container(
                             margin: EdgeInsets.all(10.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [

                                 Text('Supper Offer 12 GB',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                                 SizedBox(height: 10,),

                                 Text('3 Dyas (Not on recharge'),

                                 SizedBox(height: 15,),

                                 Text('Tk 89.0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                                 SizedBox(height: 25,),

                                 ElevatedButton(onPressed: (){}, child: Text('Buy Now')),
                               ],
                             ),
                           ),
                         ),
                       )
                       ),

                       Expanded(child:
                       InkWell(
                         onTap:   (){},
                         child: Card(
                           elevation: 15,
                           child: Container(
                             margin: EdgeInsets.all(10.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [

                                 Text('Supper Offer 12 GB',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                                 SizedBox(height: 10,),

                                 Text('3 Dyas (Not on recharge'),

                                 SizedBox(height: 15,),

                                 Text('Tk 89.0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                                 SizedBox(height: 25,),

                                 ElevatedButton(onPressed: (){}, child: Text('Buy Now')),
                               ],
                             ),
                           ),
                         ),
                       )
                       )


                     ],
                   ),
                   Row(
                     children: [

                       Expanded(child:
                       InkWell(
                         onTap:   (){},
                         child: Card(
                           elevation: 15,
                           child: Container(
                             margin: EdgeInsets.all(10.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [

                                 Text('Supper Offer 12 GB',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                                 SizedBox(height: 10,),

                                 Text('3 Dyas (Not on recharge'),

                                 SizedBox(height: 15,),

                                 Text('Tk 89.0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                                 SizedBox(height: 25,),

                                 ElevatedButton(onPressed: (){}, child: Text('Buy Now')),
                               ],
                             ),
                           ),
                         ),
                       )
                       ),

                       Expanded(child:
                       InkWell(
                         onTap:   (){},
                         child: Card(
                           elevation: 15,
                           child: Container(
                             margin: EdgeInsets.all(10.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [

                                 Text('Supper Offer 12 GB',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                                 SizedBox(height: 10,),

                                 Text('3 Dyas (Not on recharge'),

                                 SizedBox(height: 15,),

                                 Text('Tk 89.0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                                 SizedBox(height: 25,),

                                 ElevatedButton(onPressed: (){}, child: Text('Buy Now')),
                               ],
                             ),
                           ),
                         ),
                       )
                       )


                     ],
                   ),
                 ],
               )),
             ),





            ],
          ),
        ),
      ),
    );
  }
}
