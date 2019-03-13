import 'package:capela_demo/constants/images.dart';
import 'package:capela_demo/ui/about_page.dart';
import 'package:capela_demo/ui/news_list.dart';
import 'package:capela_demo/ui/settings_page.dart';
import 'package:capela_demo/ui/events_page.dart';
import 'package:capela_demo/ui/principal_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() => runApp(CapelaDemoApp());

class CapelaDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capela Unicesumar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });

    SystemChrome.setEnabledSystemUIOverlays([]);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.7), BlendMode.colorDodge),
              image: AssetImage(Images.SPLASH_BG))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(child: Image.asset(Images.LOGO_CAPELA)),
          ),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PrincipalPage(),
    AboutPage(),
    EventsPage(),
    NewsListPage(),
    SettingsPage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.3,
        title: Text(
          'Capela Cristã Unicesumar',
          style: TextStyle(color: Colors.black, fontFamily: 'Arvo'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: null,
            iconSize: 32,
          )
        ],
      ),
      body: Container(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: Text('Principal'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.edit),
            title: Text('Sobre'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            title: new Text('Eventos'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text('Notícias'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Opções'))
        ],
      ),
    );
  }
}
