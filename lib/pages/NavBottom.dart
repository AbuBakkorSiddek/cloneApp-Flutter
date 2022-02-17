import 'package:airtelapp/pages/BottomNav/LifeStyle.dart';
import 'package:airtelapp/pages/BottomNav/Menu.dart';
import 'package:airtelapp/pages/BottomNav/Notification.dart';
import 'package:airtelapp/pages/BottomNav/Offers.dart';
import 'package:airtelapp/pages/BottomNav/HomePage.dart';
import 'package:flutter/material.dart';

class NavBottom extends StatefulWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {


  final List pageslist=[
    const Offers(),
    const Notifications(),
    const HomePage(),
    const LifeStyle(),
    const  Menu()
  ];


  int _currentIndex=2;




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex:_currentIndex,
        showSelectedLabels: true,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),label: 'Offers',tooltip:'Offers' ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none),label: 'Notification',tooltip: 'Notification'),
          BottomNavigationBarItem(icon: Icon(null),label: 'Home',tooltip: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: 'Lifestyle',tooltip: 'Lifestyle'),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu',tooltip: 'Menu'),

        ],

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {

        setState(() {
          _currentIndex = 2;
        });

      },
        backgroundColor: Colors.red,
        child:Icon(Icons.home_outlined,),
        tooltip: 'Home',

      ),

      body:pageslist[_currentIndex] ,
    );
  }
}
