import 'package:flutter/material.dart';
import 'package:untitled/widget/Color.dart';

class FullNew extends StatefulWidget {
  FullNew({
    this.image,
  });

  String image;

  @override
  _FullNewState createState() => _FullNewState();
}

class _FullNewState extends State<FullNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [



          Padding(
              padding:
              const EdgeInsets.only(top: 150, right: 30, left: 30, bottom: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ), ),
          Padding(
            padding: const EdgeInsets.only(left:105,right: 100,top: 60),
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                boxShadow: [

                  BoxShadow(
                    color: grey,
                    spreadRadius: 2,
                    blurRadius: 6,

                  ),
                ],
                color: grey2,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.image,
                  ),

                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
