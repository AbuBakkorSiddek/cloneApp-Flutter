import 'package:flutter/material.dart';

class QuickCard extends StatelessWidget {
  String title;
  IconData iconData;
  QuickCard({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),

          Icon(iconData)

        ],
      ),
    );
  }
}