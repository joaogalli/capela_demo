import 'package:capela_demo/constants/images.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  PrincipalPage({Key key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  TextStyle bodyTextStyle =
      TextStyle(color: Colors.grey[600], fontFamily: 'Arvo');

  @override
  Widget build(BuildContext context) {
    double imageSize = MediaQuery.of(context).size.width / 2 - 18;

    return Padding(
      padding: EdgeInsets.all(12),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.asset(Images.CAPELA_INTERNO_02)),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: buildButton("EVENTOS", "", imageSize, Color.fromARGB(255, 220, 188, 37),
                        Icons.calendar_today)),
                buildButton(
                    "CONECTE-SE", "com Deus", imageSize, Color.fromARGB(255, 168, 78, 11), Icons.wifi),
              ],
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.asset(Images.SPLASH_BG)),
        ],
      ),
    );
  }

  buildButton(
      String text, String subtext, double imageSize, Color backgroundColor, IconData icon) {

    Widget subtextWidget = Text(
      subtext,
      textAlign: TextAlign.end,
      style: TextStyle(color: Colors.white, fontSize: 18),
    );

    if (subtext.isEmpty)
      subtextWidget = SizedBox(width: 0, height: 0,);

    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          subtextWidget
        ],
      ),
    );
  }
}
