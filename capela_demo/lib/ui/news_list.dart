import 'package:capela_demo/constants/images.dart';
import 'package:capela_demo/ui/news_detail.dart';
import 'package:flutter/material.dart';

class NewsListPage extends StatefulWidget {
  NewsListPage({Key key}) : super(key: key);

  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          buildNews(context, Images.SPLASH_BG, "28 de fevereiro 2019",
              "Profissionais do NAI atenderam alunos e pais durante a programação de boas-vindas da Unicesumar"),
          buildNews(context, Images.CAPELA_INTERNO_01, "23 de janeiro 2019",
              "Um alento em meio a correria diária"),
          buildNews(context, Images.CAPELA_EXTERNO_01, "23 de janeiro 2019",
              "Hora de compartilhar, ouvir e falar do amor de Deus"),
          buildNews(context, Images.CAPELA_INTERNO_02, "17 de janeiro 2019", "Você não está só..."),
          buildNews(context, Images.CAPELA_EXTERNO_02, "10 de janeiro 2019", "Independência é morte!"),
          buildNews(context, Images.SPLASH_BG, "02 de setembro 2018",
              "Unicesumar sedia Dunamis Pockets Week 2018"),
        ],
      ),
    );
  }

  buildNews(BuildContext context, String image, String data, String title) {
    double totalWidth = MediaQuery.of(context).size.width / 2 - 12;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NewsDetailPage()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage(image),
              width: totalWidth,
              fit: BoxFit.fitWidth,
            ),
            Container(
              width: totalWidth,
              padding: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data,
                    style: TextStyle(fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
