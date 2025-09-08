import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image display"),
        ),
        body: Center(
            child: Container(
              height: 500,
              width: 200,
              child: Column(
                children: [
                  Image.network('https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp'),
                  Image.network('https://www.daily.co/blog/content/images/2023/07/Flutter-feature.png'),
                  Image.network('https://css-tricks.com/wp-content/uploads/2022/08/flutter-clouds.jpg'),

                ]
              )),
        ),
      ),
    );
  }
}
