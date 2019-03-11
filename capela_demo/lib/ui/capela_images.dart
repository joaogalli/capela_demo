import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class CapelaImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://www.unicesumar.edu.br/capela2/wp-content/uploads/sites/189/2018/08/DJI_0296-1024x683.jpg',
      'https://www.unicesumar.edu.br/capela2/wp-content/uploads/sites/189/2018/08/DJI_0307-1024x683-1.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Imagens da Capela",
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
      body: Container(
          child: PhotoViewGallery(
        pageOptions: <PhotoViewGalleryPageOptions>[
          PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(images[0]),
            heroTag: "tag1",
          ),
          PhotoViewGalleryPageOptions(
              imageProvider: NetworkImage(images[1]),
              heroTag: "tag2",
              maxScale: PhotoViewComputedScale.contained * 0.3),
        ],
        backgroundDecoration: BoxDecoration(color: Colors.black87),
        gaplessPlayback: true,
      )),
    );
  }
}
