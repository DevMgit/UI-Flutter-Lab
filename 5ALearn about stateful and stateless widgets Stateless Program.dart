import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Column(
        children: [
          Text('data 1'),Text('data 2'),Text('data 3')
        ],
      ),
    );
  }
}
