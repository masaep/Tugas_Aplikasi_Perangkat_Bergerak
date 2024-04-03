import 'package:flutter/material.dart';
import 'package:praktek2week3/main.dart';

class MyHomePageState extends MyApp {
  List<Map<String, dynamic>> items = [
    {'icon': Icons.call, 'title': 'Call', 'color': Colors.red}, // Warna merah
    {'icon': Icons.navigation, 'title': 'Route', 'color': Colors.green}, // Warna hijau
    {'icon': Icons.share, 'title': 'Share', 'color': Colors.blue}, // Warna biru
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((item) {
          return Column(
            children: [
              Icon(
                item['icon'],
                color: item['color'], 
                size: 40.0,
              ),
              SizedBox(height: 8.0), 
              Text(
                item['title'],
                style: TextStyle(color: item['color'], fontSize: 24.0),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
