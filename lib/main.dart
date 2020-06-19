import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: MainPage(),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Text(
            'question',
          ),
        ),
        Expanded(
          child: FlatButton(
            color: Colors.green,
            onPressed: () {},
            child: Text(
              'True',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            color: Colors.red,
            onPressed: () {},
            child: Text(
              'False',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
