import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Praktek 2 Pertemuan 3'),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          backgroundColor: Color.fromARGB(255, 221, 0, 255),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> items = [
    {'icon': Icons.call, 'title': 'Call', 'color': Colors.red}, 
    {'icon': Icons.navigation, 'title': 'Route', 'color': Colors.green}, 
    {'icon': Icons.share, 'title': 'Share', 'color': Colors.blue},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items
            .map(
              (item) => Column(
                children: [
                  Icon(
                    item['icon'],
                    color: item['color'], // Menggunakan warna yang telah ditentukan
                    size: 40.0,
                  ),
                  Container(
                    child: Text(
                      item['title'],
                      style: TextStyle(color: item['color'], fontSize: 24.0),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
