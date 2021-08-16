import 'package:flutter/material.dart';

class NewsMenu extends StatefulWidget {
  NewsMenu({this.ColorNewsMenu, this.ColorNewsText, this.text});

  final Color ColorNewsMenu;
  final Color ColorNewsText;
String text;
  @override
  _NewsMenuState createState() => _NewsMenuState();
}

class _NewsMenuState extends State<NewsMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 140,
      decoration: BoxDecoration(
        color: widget.ColorNewsMenu,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
        widget.text,
          style: TextStyle(
              color: widget.ColorNewsText, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
