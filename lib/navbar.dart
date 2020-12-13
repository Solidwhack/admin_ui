import 'package:admin_ui/homescreen.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetop = <Widget>[
    Home(),
    Text('Manage Restaurant'),
    Text("Profiles")
  ];
  void _onitemtap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center( child:
            Image(
            image: AssetImage('assets/logo2.png'),
            fit: BoxFit.cover,
            height: 93,
          ))
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Mirza'),
              accountEmail: new Text('email'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("M"),
              )
            ),
            new ListTile(
              title: new Text("View Account"),
              trailing: new Icon(Icons.people),
            )
          ]
        ),
      ),
      body: Center(
        child: _widgetop.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            title: Text("Restaurants"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            title: Text("Profiles"),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onitemtap,
      )
    );
  }
}
