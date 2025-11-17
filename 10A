//Main.dart copy paste the code
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _displayText = 'Hello';

  void _updateText() {
    setState(() {
      _displayText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_displayText),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateText,
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
//Widget_test.dart 
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/main.dart'; //url might change

void main() {
  testWidgets('text changes', (WidgetTester tester) async {
    //build the app
    await tester.pumpWidget(MyApp());
    //test-1 verifying the initial text'Hello
    expect(find.text("Hello"), findsOneWidget);
    expect(find.text("Button Pressed"), findsNothing);
    //test-2 to tap the button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    //test-3 verify the text
    expect(find.text("Hello"), findsNothing);
    expect(find.text("Button Pressed"), findsOneWidget);
  });
}
//open terminal and type the following command
//flutter test
//it should show +1: All test passed
