import 'package:capela_demo/constants/images.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatefulWidget {
  NewsDetailPage({Key key}) : super(key: key);

  @override
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width - 16;

    String description =
        "\rLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed dolor placerat mi lobortis convallis vel ac ipsum. Nulla efficitur dolor sed eros efficitur vulputate. Nulla eu gravida erat, maximus scelerisque massa. Nulla rutrum porta leo, ut malesuada justo egestas at. Cras egestas dolor eget erat accumsan hendrerit. Suspendisse nisi lorem, mollis mattis nibh a, elementum hendrerit est. Mauris sit amet volutpat nisl, a egestas ipsum. Vivamus ut eros a ante molestie facilisis eget in felis. Donec condimentum nec risus et lobortis."
        "\n\n\rSed vitae turpis at quam tempus laoreet ac nec tortor. Donec suscipit quam at tempor pharetra. Sed id efficitur turpis. Aenean dictum ut quam non sollicitudin. Phasellus id libero id felis tempor gravida sed nec erat. Morbi metus nisi, venenatis et mauris sit amet, molestie ornare nunc. Duis quis rutrum risus, vitae sodales ante. Nam accumsan tempor eros. Sed at bibendum lectus. Quisque vitae vestibulum quam. Quisque dapibus vel sapien nec molestie.";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notícias",
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
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Profissionais do NAI atenderam alunos e pais durante a programação de boas-vindas da Unicesumar",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22, color: Colors.black, fontFamily: 'Arvo'),
              ),
            ),
            Image(
              image: AssetImage(Images.SPLASH_BG),
              width: totalWidth,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                description,
                style: TextStyle(color: Colors.grey[900], fontFamily: 'Arvo'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
