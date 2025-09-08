import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Combined layerLayout Ex'),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(color: Colors.red,width: 50,height: 50,),
                  Container(color: Colors.green,width: 50,height: 50,),
                  Container(color: Colors.blue,width: 50,height: 50,),
                ],
              ),
              SizedBox(height: 20,),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(color: Colors.red,width: 200,height: 200,),
                  Container(color: Colors.green,width: 150,height: 150,),
                  Container(color: Colors.blue,width: 100,height: 100,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
