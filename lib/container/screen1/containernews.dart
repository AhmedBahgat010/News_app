import 'package:flutter/material.dart';
import 'package:untitled/container/screen2/fullnews.dart';
import 'package:untitled/widget/Color.dart';

class ContainerNews extends StatefulWidget {
  const ContainerNews({this.imagenews, this.title, this.date, this.content});
  final String imagenews;
  final String title;
  final String date;
  final String content;
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
                  builder: (context) => FullNew(
                    image: widget.imagenews,
                    content: widget.content,
                  ),
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
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.imagenews),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                widget.title,
                                style: TextStyle(
                                    fontSize: 22,
                                    color: grey2,
                                    fontWeight: FontWeight.w400),
                                maxLines: 3,
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  widget.date,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
          ),
        ],
      ),
    );
  }
}
