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
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Aplikasi Suci"),
        ),
        body: const Center(
          child: Text(
            "Hello Suci, Kamu adalah anak ke 3 dari 4 bersaudara",
              maxLines: 3, //membuat baris
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center, //posisi text tengah
              style: TextStyle( //memberikan style teks
                backgroundColor: Colors.cyanAccent,
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
                fontFamily: 'Schyler',
                decorationStyle: TextDecorationStyle.wavy,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationThickness: 2,
              ),
          ),
        ),
      ),
    );
  }
}