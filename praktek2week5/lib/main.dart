import 'package:flutter/material.dart';
import 'test_dynamic_listview.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DynamicListView(),
    );
  }
}