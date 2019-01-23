import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/model/Article.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map data;
  List userData;

  Future<Article> getData() async {
    http.Response response =
    await http.get('https://newsapi.org/v2/top-headlines?sources=cnn&apiKey=3216bcf971894ec7ae959f4a0573c3cd');
    data = json.decode(response.body);
    setState(() {
      userData = data['articles'];
    });
    debugPrint(userData.toString());
  }

  @override
  void initState() {
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userData == null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.network(
                      userData[index]['urlToImage']
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Text("${userData[index]['title']}", style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),),
                  ),
                ],
              ),
            ),
          );

        }
      )
    );
  }

}

