import 'package:flutter/material.dart';
import 'package:untitled/container/screen2/fullnews.dart';
import 'package:untitled/widget/Color.dart';

class ContainerNews extends StatefulWidget {
  const ContainerNews({
 this.imagenews
  });
  final String
  imagenews;

  @override
  _ContainerNewsState createState() => _ContainerNewsState();
}

class _ContainerNewsState extends State<ContainerNews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 0, right: 10),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullNew(image:widget.imagenews),
                ),
              );
            },
            child: Container(
                alignment: Alignment.centerLeft,
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: red, borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.imagenews
                        ),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
