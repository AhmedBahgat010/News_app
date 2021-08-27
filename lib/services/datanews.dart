import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/services/model.dart';

class Data {
  Data();
  Future<List<ArteCal>> getData(String news) async {
    List<ArteCal> data = [];
    print(DateTime.parse("2021-07-25"));
    http.Response url = await http.get(
        "https://newsapi.org/v2/everything?q=$news&from=2021-07-28&sortBy=publishedAt&apiKey=67bbf336695e494887aa8c82c905d5cf");
    if (url.statusCode == 200) {
      List location_data = json.decode(url.body)["articles"];
      data = location_data.map((e) {
        return ArteCal.fromJson(e);
      }).toList();
      print(data);
    } else {
      print("error");
    }
    return data;
  }
}
