// ignore_for_file: unnecessary_string_escapes, deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utilities/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 600.0),
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 200,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 260.0),
          child: Center(
            child: Image.asset(
              'assets/images/icon.png',
              height: 390,
            ),
          ),
        ),
        Center(
          child: Text(
            'Gustavo Pereira',
            style: kLabelStyle,
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(top: 65.0),
           child: Center(
            child: Text(
              'Estudante',
              style: kLabelStyle,
            ),
        ),
         ),
         Center(child: Padding(
           padding: const EdgeInsets.only(top: 250.0),
           child: _wppButton(),
         )),
        Padding(
          padding: const EdgeInsets.only(top: 450.0, left: 85),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(FontAwesomeIcons.instagram, size: 40),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(FontAwesomeIcons.facebook, size: 40),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(FontAwesomeIcons.twitter, size:40),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(FontAwesomeIcons.twitch, size: 40),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

Widget _wppButton() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 30.0),
    width: 300,
    child: RaisedButton(
      elevation: 2.0,
      onPressed: () =>  { launch('https://web.whatsapp.com/')},
                
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.green,
      child: Text(
        'Whatsapp ',
        style: TextStyle(
          color: Color.fromARGB(255, 7, 7, 7),
          letterSpacing: 2,
          fontSize: 23.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
      ),
    ),
  );
}