import 'package:flutter/material.dart';
import 'test_listview_builder.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: BuilderListView(),
    );
  }
}