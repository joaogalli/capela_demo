import 'package:flutter/material.dart';
import 'package:capela_demo/ui/event_detail_page.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  double textSize;
  double dayBoxSize = 64;

  @override
  Widget build(BuildContext context) {
    textSize = MediaQuery.of(context).size.width - dayBoxSize - 20 - 20;

    Color green = Colors.green[300];
    Color red = Colors.red[300];
    Color blue = Colors.blue[300];

    return ListView(
      children: <Widget>[
        buildMonth("Março"),
        buildItem("01", blue, "Oração pelos Cristãos perseguidos", "Todas as pessoas são convidadas a esse momento de orações pelos cristãos perseguidos ao redor do mundo."),
        buildItem("12", green, "Exposição sobre Hebreus 01", "Primeira exposição bíblica sobre a carta aos Hebreus, capítulos 1 e 2"),
        buildItem("28", green, "Exposição sobre Hebreus 02", "Segunda exposição bíblica sobre a carta de Hebreus, capítulos 3 e 4."),
        buildMonth("Abril"),
        buildItem("01", red, "Oração pelos Cristãos perseguidos", "Todas as pessoas são convidadas a esse momento de orações pelos cristãos perseguidos ao redor do mundo."),
        buildItem("12", blue, "Exposição sobre Hebreus 01", "Primeira exposição bíblica sobre a carta aos Hebreus, capítulos 1 e 2"),
        buildItem("28", green, "Exposição sobre Hebreus 02", "Segunda exposição bíblica sobre a carta de Hebreus, capítulos 3 e 4."),
        buildMonth("Maio"),
        buildItem("01", green, "Oração pelos Cristãos perseguidos", "Todas as pessoas são convidadas a esse momento de orações pelos cristãos perseguidos ao redor do mundo."),
        buildItem("08", blue, "Exposição sobre Hebreus 01", "Primeira exposição bíblica sobre a carta aos Hebreus, capítulos 1 e 2"),
        buildItem("12", green, "Exposição sobre Hebreus 01", "Primeira exposição bíblica sobre a carta aos Hebreus, capítulos 1 e 2"),
        buildItem("28", red, "Exposição sobre Hebreus 02", "Segunda exposição bíblica sobre a carta de Hebreus, capítulos 3 e 4."),

      ],
    );
  }

  buildMonth(String month) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 12, 4),
      child: Text(
        month,
        style: TextStyle(fontSize: 20, fontFamily: 'Arvo'),
      ),
    );
  }

  buildItem(String dayText, Color dayColor, String title, String description) {
    return GestureDetector(
      onTap: eventTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: dayBoxSize,
              height: dayBoxSize,
              decoration: BoxDecoration(
                  color: dayColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              alignment: Alignment(0, 0),
              child: Text(
                dayText,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: SizedBox(
                    width: textSize,
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 18, fontFamily: 'Arvo'),
                    ),
                  ),
                ),
                SizedBox(
                  width: textSize,
                  child: Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  eventTap() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetailPage()));
  }

}
