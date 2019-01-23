import 'package:flutter/material.dart';
import 'package:flutter_assignment/model/Article.dart';
import 'fragment/download.dart';
import 'fragment/about_us.dart';
import 'fragment/sync_now.dart';
import 'fragment/setting.dart';
import 'fragment/home.dart';


void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Color appBarColor = Color.fromRGBO(69, 90, 100, 1);
  Color itemDrawerColor = Colors.black54;
  int _selectdDrawerIndex = 1;
  bool selectedDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }

  _buildAppBar(){
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: (){
            showSearch(
              context: context,
              delegate: ArticleSearch(),
            );
          },
        ),
      ],
      centerTitle: true,
      title: Text("News"),
      backgroundColor: appBarColor,
    );

  }

  _buildBody(){
    return Container(
      child: _addDrawerFragment(_selectdDrawerIndex),
    );

  }

  _addDrawerFragment(int id){
    switch(id){
      case 1:
        return new HomePage();
        break;
      case 2:
        return new Download();
        break;
      case 3:
        return new SyncNow();
        break;
      case 4:
        return new Setting();
        break;
      case 5:
        return new AboutUs();
        break;
      default:
        return Text("Error");
        break;
    }
  }

  _buildDrawer(){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          /*DrawerHeader(
            child: Text("Drawer Header"),
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
          ),*/
          Container(
            color: appBarColor,
            height: 100.0,
          ),
          ListTile(
            selected: selectedDrawer = true,
            title: Text("Home", style: TextStyle(color: itemDrawerColor,),),
            leading: Icon(Icons.home, color: itemDrawerColor,),
            onTap: (){
              setState(() {
                _selectdDrawerIndex = 1;
              });
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            selected: selectedDrawer = true,
            title: Text("Download", style: TextStyle(color: itemDrawerColor,),),
            leading: Icon(Icons.file_download, color: itemDrawerColor,),
            onTap: (){
              setState(() {
                _selectdDrawerIndex = 2;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            selected: selectedDrawer = true,
            title: Text("Sync Now", style: TextStyle(color: itemDrawerColor,),),
            leading: Icon(Icons.sync, color: itemDrawerColor,),
            onTap: (){
              setState(() {
                _selectdDrawerIndex = 3;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            selected: selectedDrawer = true,
            title: Text("Setting", style: TextStyle(color: itemDrawerColor,),),
            leading: Icon(Icons.settings, color: itemDrawerColor,),
            onTap: (){
              setState(() {
                _selectdDrawerIndex = 4;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            selected: selectedDrawer = true,
            title: Text("About Us", style: TextStyle(color: itemDrawerColor,),),
            leading: Icon(Icons.language, color: itemDrawerColor,),
            onTap: (){
              setState(() {
                _selectdDrawerIndex = 5;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}

class ArticleSearch extends SearchDelegate<Article>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: (){

        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

}
