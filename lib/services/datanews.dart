// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import 'package:untitled/services/model.dart';
//
// class Data extends StatefulWidget {
//   @override
//   _DataState createState() => _DataState();
// }
//
// class _DataState extends State<Data> {
//   Future<ArteCal> Post;
//
//   @override
//   initState() {
//     super.initState();
//   Post = getData();
//   }
//
//   Future<ArteCal> getData() async {
//     http.Response url = await http.get("url");
//     if (url.statusCode == 200) {
//       return ArteCal.fromJson(json.decode(url.body));
//     } else {
//       print("error");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Data();
//   }
// }
