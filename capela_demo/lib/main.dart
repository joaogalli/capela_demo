import 'package:capela_demo/ui/about_page.dart';
import 'package:capela_demo/ui/create_event_page.dart';
import 'package:capela_demo/ui/events_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

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
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });

    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Text(
            "Splash Screen",
            style: TextStyle(color: Colors.black),
          ),
        ));
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [AboutPage(), EventsPage(), CreateEventPage()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.3,
        title: Text(
          'Capela Unicesumar',
          style: TextStyle(color: Colors.black, fontFamily: 'Arvo'),
        ),
      ),
      body: Container(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // this will be set when a new tab is tapped
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: Text('Sobre'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            title: new Text('Eventos'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box), title: Text('Adicionar'))
        ],
      ),
    );
  }
}
