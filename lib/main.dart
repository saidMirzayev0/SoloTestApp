import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[600],
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          centerTitle: true,
          title: Text('SOLO TEST'),
        ),
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

int piyonIndex = 0;
List<String> piyonSayisi = [
  '...',
  'Test sonucu: Bilgin',
  'Test sonucu: Zeki',
  'Test sonucu: Normal',
  'Test sonucu: Aptal',
  'Test sonucu: Gerizekali'
];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              margin: EdgeInsets.only(bottom: 8.0),
              child: Image.asset(
                'assets/solo-test.png',
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.red,
                    size: 40,
                  ),
                  title: Text(
                    'Zeka Seviyyen',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    setState(() {
                      piyonIndex = Random().nextInt(5) + 1;
                      print(piyonIndex);
                    });
                  },
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                height: 150,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Text(piyonSayisi[piyonIndex],
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center),
                ))
          ],
        ),
      ),
    );
  }
}
