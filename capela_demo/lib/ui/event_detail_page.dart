import 'package:flutter/material.dart';

class EventDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Evento",
          style: TextStyle(color: Colors.black, fontFamily: 'Arvo'),
        ),
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        child: Center(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 4),
                    child: Icon(Icons.calendar_today, color: Colors.grey,),
                  ),
                  Text(
                    "24 de Maio",
                    style: TextStyle(color: Colors.grey, fontFamily: 'Arvo', fontSize: 24),
                  ),
                ],
              ),
            ),
            Text("Oração pelos cristãos perseguidos",
              style: TextStyle(fontSize: 24, fontFamily: 'Arvo'),),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 4),
              child: Text("Todas as pessoas são convidadas a esse momento de orações pelos cristãos perseguidos ao redor do mundo.",
                style: TextStyle(fontSize: 18, fontFamily: 'Arvo', color: Colors.grey[600]),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 4),
              child: Text("Este evento é livre para todos os que desejarem participar.",
                style: TextStyle(fontSize: 14, fontFamily: 'Arvo', fontStyle: FontStyle.italic, color: Colors.grey[600]),),
            ),
          ]),
        ),
      ),
    );
  }
}
