import 'package:flutter/material.dart';
import 'package:untitled/widget/Color.dart';

class FullNew extends StatefulWidget {
  FullNew({this.image, this.content});

  String image;
  String content;

  @override
  _FullNewState createState() => _FullNewState();
}

class _FullNewState extends State<FullNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 150, right: 20, left: 20, bottom: 5),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(right: 50, top: 150, left: 20),
                child: Text(
                  widget.content,
                  style: TextStyle(
                      fontSize: 29, fontWeight: FontWeight.w500, color: grey2),
                  maxLines: 13,
                ),
              ),
              decoration: BoxDecoration(
                color: red,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 105, right: 100, top: 60),
            child: Container(
              width: 300,
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
                  image: NetworkImage(
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
