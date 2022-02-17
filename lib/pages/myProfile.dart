import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My profile'),),
      backgroundColor: Colors.red,
      body: Container(
        width: MediaQuery.of(context).size.height*2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight:Radius.circular(40.0),topLeft: Radius.circular(40.0))
        ),
        child: Expanded(

          child:
          ListView(
           children: [

            Column(
               children: [

                 Container(
                     child:  Padding(
                       padding: const EdgeInsets.only(top:50,right: 250),
                       child: Text("My profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                     )
                 ),

                 Container(
                     width: 150,
                     height: 150,
                     child: CircleAvatar(backgroundImage: AssetImage('images/siddek.jpg'))),

                 SizedBox(height: 25,),

                 Container(
                     width: 150,
                     height: 50,
                     child: ElevatedButton(onPressed: (){}, child: Text('Upload'))),

                 SizedBox(height: 10,),

                 Container(
                   child: Padding(
                     padding: const EdgeInsets.all(25.0),
                     child: Column(
                       children: [

                         TextField(

                           decoration: InputDecoration(
                             hintText: 'Nick Name',
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10.0)
                               )


                           ),
                         ),

                         SizedBox(height: 10,),

                         TextField(

                           decoration: InputDecoration(
                               hintText: 'Date of Birth (Optional)',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10.0)
                               )


                           ),
                         ),

                         SizedBox(height: 10,),

                         TextField(

                           decoration: InputDecoration(
                               hintText: 'Email (Optional)',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10.0)
                               )


                           ),
                         ),

                         SizedBox(height: 10,),



                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             
                             Expanded(child:  Container(
                                 width: 150,
                                 height: 50,
                                 child: ElevatedButton(onPressed: (){}, child: Text('Facebook id'))),),

                             SizedBox(width: 20,),

                             Expanded(child:  Container(
                                 width: 150,
                                 height: 50,
                                 child: ElevatedButton(onPressed: (){}, child: Text('Google id'))),)
                             
                           ],
                         ),

                         SizedBox(height: 30,),


                         Container(

                           height: 60,
                             width: 200,

                             child: ElevatedButton(onPressed: (){}, child: Text('SAVE',style: TextStyle(fontSize: 25),))),





                       ],

                     ),
                   ),
                 )


               ],
             ),

           ],
          ),
        ),
      ),
    );
  }
}
