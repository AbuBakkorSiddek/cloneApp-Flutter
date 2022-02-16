import 'package:flutter/material.dart';

class ReusedContainer extends StatelessWidget {

  Widget CardChild;

  ReusedContainer({
    Key? key,
    required this.CardChild
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: Container(
            width: 150,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0)
            ),
            child: CardChild,
          ),
        )


      ],
    );
  }
}