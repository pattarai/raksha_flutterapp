import 'package:flutter/material.dart';
import 'package:my_bio_data/webview.dart';
import 'loginpg.dart';
import 'main.dart';
import 'package:my_bio_data/snackbar.dart';
import 'Stack.dart';
import 'calc1.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomeScreen extends StatefulWidget {

  var drawerItems = [
    new DrawerItem("Login", Icons.vpn_key),
    new DrawerItem("BioData", Icons.people),
    new DrawerItem("Stack", Icons.layers),
    new DrawerItem("snackbar", Icons.space_bar),
    new DrawerItem("WebView", Icons.web),
    new DrawerItem("Calculator", Icons.add_box),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  BuildContext _ctx;
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Login();
        break;
      case 1:
        return BioData();
        break;
      case 2:
        return StackDemo();
        break;
      case 3:
        return SnackbarDemo();
        break;
      case 4:
        return WebViewDemo();
        break;
      case 5:
        return Scientific();
        break;
      default:
        return new Text("error");
        break;
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var drawerOptions = <Widget>[];

    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      if (i == 7) {
        drawerOptions.add(
          const Divider(height: 2.0, color: Colors.pinkAccent),
        );
      }
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        backgroundColor: Colors.black,
        title: new Text(
            widget.drawerItems[_selectedDrawerIndex].title ,textAlign: TextAlign.center,

          ),
      ),
      drawer: new Drawer(
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("RAKSHA"),
                accountEmail: new Text("@RAY123"),
                currentAccountPicture: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage: AssetImage("images/alone.jpeg"), // for Network image
                ),
                decoration: new BoxDecoration(
                  color: Colors.black,
                ),
              ),
              new Column(children: drawerOptions)
            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}