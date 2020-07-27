import 'package:drawernavigation/newPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.purple), home: new HomePage()
        // routes: <String, WidgetBuilder>{
        //   '/a': (BuildContext context) => new Newpage("Welcome to first page")

        // });
        );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(" Drawer  App"),
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: new Text("Ram Prasad Sharma"),
                  accountEmail: new Text("ram132527@gmail.com"),
                  currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.red,
                    child: new Text("Ram"),
                  )),
              new ListTile(
                
                  title: new Text("page one on drawer"),
                  trailing: new Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                           new Newpage("Page one")));
                  }),
              new Divider(),
              new ListTile(
                  title: new Text("page two on drawer"),
                  trailing: new Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                           new Newpage("Page two")));
                  }),
              new Divider(),
              new ListTile(
                  title: new Text("page three on drawer"),
                  trailing: new Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                          new Newpage("Page three")));
                  }),
              new Divider(),
              new ListTile(
                title: new Text(
                  "Close",
                  style: TextStyle(color: Colors.red),
                ),
                trailing: new Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        body: new Container(
            child: new Center(
          child: Text("Home page"),
        )));
  }
}
