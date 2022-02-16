import 'package:flutter/material.dart';

NavigatorPageRoute(BuildContext context,Page){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Page));
}