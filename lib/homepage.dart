import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/container/screen1/containernews.dart';
import 'package:untitled/container/screen1/newsmenu.dart';
import 'package:untitled/services/list_api.dart';
import 'package:untitled/services/model.dart';
import 'package:untitled/widget/color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int PageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Walk With Trend",
                    style: TextStyle(
                        color: red, fontSize: 35, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 9,
                ),
                Text("Don't Stay behind ,read the trend",
                    style: TextStyle(
                        color: grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 30,
                ),

                //.............................................منيو الاخبار [رياضة . ....]........................................
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            PageIndex = 0;
                          });
                        },
                        child: NewsMenu(
                          text: "Sport",
                          ColorNewsMenu: PageIndex == 0 ? red : grey,
                          ColorNewsText: PageIndex == 0 ? grey : red,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            PageIndex = 1;
                          });
                        },
                        child: NewsMenu(
                          text: "Technology",
                          ColorNewsMenu: PageIndex == 1 ? red : grey,
                          ColorNewsText: PageIndex == 1 ? grey : red,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            PageIndex = 2;
                          });
                        },
                        child: NewsMenu(
                          text: "world",
                          ColorNewsMenu: PageIndex == 2 ? red : grey,
                          ColorNewsText: PageIndex == 2 ? grey : red,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            PageIndex = 3;
                          });
                        },
                        child: NewsMenu(
                          text: " Fan & Music",
                          ColorNewsMenu: PageIndex == 3 ? red : grey,
                          ColorNewsText: PageIndex == 3 ? grey : red,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 30,),
                // ContainerNews(
                //   imagenews: "images/1.png",
                // ),
                // ContainerNews(
                //   imagenews: "images/1.png",
                // ),
                // ContainerNews(
                //   imagenews: "images/1.png",
                // ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(10),
                  itemCount: menu[PageIndex].length,
                  itemBuilder: (_, index) {
                    return ContainerNews(

                      imagenews: menu[PageIndex][index][0],
                    );
                  },
                ),

                // FutureBuilder<ArteCal>(
                //   future: Post,
                //   builder: (context, snapshot) {
                //     if (snapshot.hasData ==200) {
                //       return ListView.builder(
                //         shrinkWrap: true,
                //         physics: NeverScrollableScrollPhysics(),
                //         padding: EdgeInsets.all(10),
                //         itemCount: menu[PageIndex].length,
                //         itemBuilder: (_, index) {
                //           return ContainerNews(
                //             imagenews: (snapshot.data.image),
                //           );
                //         },
                //       );
                //     } else if (snapshot.hasData) {
                //       return CircularProgressIndicator();
                //     }
                //   },
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
