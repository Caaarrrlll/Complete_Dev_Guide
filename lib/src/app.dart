import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

import './models/image_model.dart';
import './widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    final res = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    setState(() {
      images.add(ImageModel.fromJson(json.decode(res.body)));
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see some images!"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
        body: ImageList(images),
      ),
    );
  }

}
