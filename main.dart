import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LBSIM First Flutter Inc-Dec App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

//Statefulwidget
class Home extends StatefulWidget {
  @override
  // membuat state
  HomeState createState() => HomeState();
}

//HomeState
class HomeState extends State<Home> {
  // inisialisasi
  int counter = 0;

  //Fungsi menambah value counter
  void incrementCounter() {
    // Melakukan perubahan state counter
    setState(() {
      counter=counter+4;
    });
  }

  //Fungsi mengurangi value counter
  void decrementCounter() {
    // Melakukan perubahan state counter
    setState(() {
      counter= counter-4;
    });
  }

  @override
  //UI
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Increment-Decrement App')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Flutter First Counter App: $counter', style: TextStyle(fontSize: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('--'),
                  onPressed: decrementCounter,
                ),
                Container(
                  width: 15.0,
                ),
                RaisedButton(
                  child: Text('++'),
                  onPressed: incrementCounter,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}