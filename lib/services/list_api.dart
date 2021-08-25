import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

import 'model.dart';

// class add extends StatefulWidget {

//   @override
//   _addState createState() => _addState();
// }

// class _addState extends State<add> {
//   Future<ArteCal> Post;

//   @override
//   initState() {
//     super.initState();
//     Post = getData();
//   }

//   Future<ArteCal> getData() async {
//     http.Response url = await http.get("url");
//     if (url.statusCode == 200) {
//       return ArteCal.fromJson(json.decode(url.body));
//     } else {
//       print("error");
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// List menu = [Sport, Technology, world, Fan_Music];

// List<List> Sport = [
//   [],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//     // FutureBuilder<ArteCal>(future:Post,builder: (context, snapshot) {
//     //   if(snapshot.hasData){
//     //     return  Image.network(snapshot.data.image);
//     //   }else if (snapshot.hasData){
//     //     return CircularProgressIndicator();
//     //   }
//     // },),
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ]
// ];
// List<List> Technology = [
//   [
//     'https://th.bing.com/th/id/OIP.Zl1TFN3ZIWBTV8Z2DiHQTAHaFS?pid=ImgDet&rs=1',
//   ],
//   [
//     'https://th.bing.com/th/id/OIP.Zl1TFN3ZIWBTV8Z2DiHQTAHaFS?pid=ImgDet&rs=1',
//   ],
//   [
//     'https://th.bing.com/th/id/OIP.Zl1TFN3ZIWBTV8Z2DiHQTAHaFS?pid=ImgDet&rs=1',
//   ],
//   [
//     'https://th.bing.com/th/id/OIP.Zl1TFN3ZIWBTV8Z2DiHQTAHaFS?pid=ImgDet&rs=1',
//   ],
//   [
//     'https://th.bing.com/th/id/OIP.Zl1TFN3ZIWBTV8Z2DiHQTAHaFS?pid=ImgDet&rs=1',
//   ],
//   [
//     'https://th.bing.com/th/id/OIP.Zl1TFN3ZIWBTV8Z2DiHQTAHaFS?pid=ImgDet&rs=1',
//   ],
// ];

// List<List> world = [
//   [
//     'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/323725_1100-1100x628.jpg',
//   ],
//   [
//     'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/323725_1100-1100x628.jpg',
//   ],
//   [
//     'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/323725_1100-1100x628.jpg',
//   ],
//   [
//     'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/323725_1100-1100x628.jpg',
//   ],
//   [
//     'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/323725_1100-1100x628.jpg',
//   ],
//   [
//     'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/323725_1100-1100x628.jpg',
//   ],
// ];
// List<List> Fan_Music = [
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ],
//   [
//     'https://i.guim.co.uk/img/media/9ef0b381b931021d53b819b6bc730545f56400af/0_0_818_1021/master/818.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=e05a5623fe28563d75103c23e14dbb7f',
//   ]
// ];
