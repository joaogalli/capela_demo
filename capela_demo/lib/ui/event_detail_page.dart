import 'package:capela_demo/constants/images.dart';
import 'package:flutter/material.dart';

class EventDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width - 16;

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
        body: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30, color: Colors.black, fontFamily: 'Arvo'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              child: Image(
                image: AssetImage(Images.SPLASH_BG),
                width: totalWidth,
                fit: BoxFit.fitWidth,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                    Text(
                      "08/03/2019",
                      style: TextStyle(
                          fontSize: 18, color: Colors.grey, fontFamily: 'Arvo'),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.timer,
                      color: Colors.grey,
                    ),
                    Text(
                      "19:00 - 22:00",
                      style: TextStyle(
                          fontSize: 18, color: Colors.grey, fontFamily: 'Arvo'),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Descrição",
                style: TextStyle(
                    fontSize: 18, color: Colors.grey[900], fontFamily: 'Arvo'),
              ),
            ),
            Text(
              "\r\rLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed dolor placerat mi lobortis convallis vel ac ipsum. Nulla efficitur dolor sed eros efficitur vulputate. Nulla eu gravida erat, maximus scelerisque massa. Nulla rutrum porta leo, ut malesuada justo egestas at. Cras egestas dolor eget erat accumsan hendrerit. Suspendisse nisi lorem, mollis mattis nibh a, elementum hendrerit est. Mauris sit amet volutpat nisl, a egestas ipsum. Vivamus ut eros a ante molestie facilisis eget in felis. Donec condimentum nec risus et lobortis.",
              style: TextStyle(
                  fontSize: 14, color: Colors.grey[800], fontFamily: 'Arvo'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text("Tenho Interesse"),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ));
  }
}
