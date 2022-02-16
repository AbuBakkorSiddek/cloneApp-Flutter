import 'package:airtelapp/pages/Recharge.dart';
import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  Widget pageRoute;
  String title;
  Widget CardChild;
  String subtitle;
  String values;
  String subValues;
  String texbtt;
  String subtexbtt;

  ReusedCard({
    Key? key,
    required this.pageRoute,
    required this.title,
    required this.CardChild,
    required this.subtitle,
    required this.values,
    required this.subValues,
    required this.texbtt,
    required this.subtexbtt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 5,
            ),
            CardChild,
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              values,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subValues,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {

                      pageRoute;
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Recharge()));
                    },
                    child: Text(
                      texbtt,
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: (){
                      pageRoute;
                    },
                    child: Text(subtexbtt,
                        style: TextStyle(fontSize: 20, color: Colors.red)),
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