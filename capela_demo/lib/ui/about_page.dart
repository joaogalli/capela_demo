import 'package:capela_demo/constants/images.dart';
import 'package:capela_demo/ui/capela_images.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<String> images = [
    Images.CAPELA_EXTERNO_01,
    Images.CAPELA_EXTERNO_02
  ];

  TextStyle bodyTextStyle = TextStyle(color: Colors.grey[600], fontFamily: 'Arvo');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Sobre",
              style: TextStyle(color: Colors.grey[700], fontFamily: 'Arvo', fontSize: 26),
            ),
          ),
          Text(
            "    A Capela UniCesumar é uma edificação linda e majestosa, pois, "
                "situada no alto do campus sede, caracteriza-se pela referência "
                "espiritual que motiva à reflexão, meditação e oração. "
                "Seu nome é Capela Cristã, pois foi inspirado em Jesus Cristo como "
                "fundamento teológico e esperança eterna.\n    Numa construção "
                "de 950 m² e 17 metros de altura possui dois pavimentos que abrigam"
                " o templo para celebrações, com capacidade para 298 pessoas, e os"
                " espaços internos onde acontecem os ensaios da orquestra e, ainda,"
                " abrigam a sua administração.\n    Possui uma história única, pois"
                " inspirada numa igreja da cidade medieval de Bruges na Bélgica,"
                " considerada a capital da cultura, traz na sua estrutura traços"
                " definidos e rústicos de uma beleza imponente. Foi isso que"
                " motivou o Reitor da Instituição, o prof. Wilson Matos, a replicar"
                " sua sublimidade.",
            style: bodyTextStyle,
          ),
          buildImage(0),
          Text(
              "    Os dois pórticos de entrada simbolizam a travessia espiritual, "
                  "saindo do mundo cético em direção à vida com Deus. "
                  "Uma travessia que, pela Graça, todos podem trilhar. "
                  "A cor azul dos vitrais retrata o céu; o verde, a água, que "
                  "promove a vida; e complementa os elementos que representam a "
                  "força e beleza da natureza na utilização de pedras nas "
                  "paredes e na cruz de ferro; promovendo uma harmonia com a "
                  "fonte em cascata e com os jardins que trazem a proximidade "
                  "do ambiente natural.\n    Toda a construção possui "
                  "características intencionais para levar o visitante à "
                  "contemplação, como o ascendente da colocação das pedras "
                  "que parece indicar para o alto, para o criador; e a cruz "
                  "vazada, no lado de fora, lembra que Ele não está mais "
                  "pregado nela, mas que sua presença é constante e eterna."
                  "\n    É impossível olhar cada detalhe da Capela UniCesumar "
                  "sem se encantar pela simplicidade dos detalhes que compõem "
                  "uma obra tão artesanal na sua totalidade.",
            style: bodyTextStyle,),
          buildImage(1),
        ],
      ),
    );
  }

  buildImage(int image) {
    return GestureDetector(
      onTap: imageTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Image.asset(
          images[image],
        ),
      ),
    );
  }

  imageTap() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CapelaImagesPage()));
  }
}
