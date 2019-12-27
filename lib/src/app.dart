import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int counter = 0;

  void fetchImage(){

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
        body: Text('$counter'),
      ),
    );
  }

}
