import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                child: Panorama(
                  child: Image.asset('assets/images/moorea-sand.webp'),
                  // child: Image.network('https://i.imgur.com/lk6WHIW.jpg'),
                  // child: Image.network(
                  // 'http://192.168.1.1/files/thetasc26c21a247d9055838792badc5/100RICOH/R0010122.JPG'),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
              ),
              Container(
                height: 50,
                alignment: Alignment.center,
                color: Theme.of(context).backgroundColor,
                child: Text('360 image'),
                width: double.infinity,
              )
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
