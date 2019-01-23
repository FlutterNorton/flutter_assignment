import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar(){
    return AppBar(
      centerTitle: true,
      title: Text("News"),
      backgroundColor: Colors.blue,
    );
  }

  _buildBody(){
    return Center(
      child: Text("Detail Screen", style: TextStyle(fontSize: 30),),
    );
  }
  
}

//push (Intent) to new Screen
/*
  Navigator.of(context).push(
  new MaterialPageRoute(
    builder: (context){
  return new Detail();
*/