import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Basic Info Form')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SimpleForm(),
        ),
      ),
    );
  }
}

class SimpleForm extends StatefulWidget {
  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          controller: _nameController,
          decoration: InputDecoration(labelText: 'Name'),
        ),
        TextField(
          controller: _ageController,
          decoration: InputDecoration(labelText: 'Age'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            final name = _nameController.text;
            final age = _ageController.text;
            print('Name: $name, Age: $age');
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
