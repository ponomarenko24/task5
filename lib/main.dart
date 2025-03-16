import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: const MyHomePage(title: 'My Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(widget.title),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // spacing: 20,
          children: <Widget>[
            Text(
              "Beautiful Images",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            photoContainer(
              imagePath:
                  'https://fastly.picsum.photos/id/179/2048/1365.jpg?hmac=GJyDjrvfBfjPfJPqSBd2pX6sjvsGbG10d21blr5bTS8',
              imageSource: 'network',
            ),
            SizedBox(height: 20),
            photoContainer(
              imagePath:
                  'https://fastly.picsum.photos/id/200/1920/1280.jpg?hmac=-eKjMC8-UrbLMpy1A4OWrK0feVPB3Ka5KNOGibQzpRU',
              imageSource: 'network',
            ),
            SizedBox(height: 20),
            photoContainer(
              imagePath: 'assets/images/cat-photo.jpg',
              imageSource: 'asset',
            ),
            Text(
              "My Text",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container photoContainer({
    required String imagePath,
    required String imageSource,
  }) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child:
          imageSource == 'asset'
              ? Image.asset(imagePath, width: 200, height: 200)
              : Image.network(imagePath, width: 200, height: 200),
    );
  }
}
