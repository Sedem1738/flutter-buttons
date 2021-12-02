import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Navigation'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('click on the button to navigate to the second screen'),
              RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Go to the second screen'),
                  onPressed: () {
                    navigateToSubPage(context);
                  }),
            ]),
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
}

class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen Navigation'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('click on the button to navigate to the first screen'),
              RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Go to the second screen'),
                  onPressed: () {
                    backToMainPage(context);
                  }),
            ]),
      ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}
