import 'package:flutter/material.dart';

import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(c) {
    return new ListView.builder(
      itemCount: images.length,
      itemBuilder: (c, int index) {
        return new Image.network(images[index].url);
      },
    );
  }
}
