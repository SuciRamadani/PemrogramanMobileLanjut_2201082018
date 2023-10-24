import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1; // Deklarasikan dan inisialisasikan variabel counter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic Apps"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(), // Menggunakan counter.toString()
              style: TextStyle(
                fontSize: 50.0, // Atur ukuran font ke 50.0
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter--;
                      });
                    }
                    print(counter);
                  },
                  icon: Icon(Icons.remove),
                  label: Text("Decrease"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    print(counter);
                  },
                  icon: Icon(Icons.add),
                  label: Text("Increase"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
