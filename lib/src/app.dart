import 'package:flutter/material.dart';

class App extends StatefulWidget {
 createState() {
   return _AppState();
 }
}

class _AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see some images!"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
              print(counter);
            });
          },
          child: Icon(Icons.add),
        ),
        body: Text('$counter'),
      ),
    );
  }
}
