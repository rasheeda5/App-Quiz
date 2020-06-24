import 'package:flutter/material.dart';

import 'brain.dart';

void main() {
  runApp(MyApp());
}

Brain quizBrain = Brain();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
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
  List<Widget> scoreKeeper = [];

  checkAnswer(bool answer) {
    if (quizBrain.getAnswer() == answer) {
      print('correct!');
    } else {
      print('incorrect!');
    }
    setState(() {
      quizBrain.incrementCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestion(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  if (quizBrain.getAnswer() == true) {
                    print('correct!');
                  } else {
                    print('incorrect!');
                  }
                  setState(() {
                    quizBrain.incrementCounter();
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  if (quizBrain.getAnswer() == false) {
                    print('correct!');
                  } else {
                    print('incorrect!');
                  }
                  setState(() {
                    quizBrain.incrementCounter();
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
