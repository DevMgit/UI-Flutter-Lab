import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom widget with animation")),
      body: Center(
        child: AnimatedIconTextButton(
          icon: Icons.star,
          text: 'Vote',
          onPressed: () { print("Button Pressed!"); },
        ),
      ),
    );
  }
}

class AnimatedIconTextButton extends StatefulWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const AnimatedIconTextButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<AnimatedIconTextButton> createState() =>
      _AnimatedIconTextButtonState();
}

class _AnimatedIconTextButtonState extends State<AnimatedIconTextButton> {
  bool _isPressed = false;

  void _handlePress() {
    setState(() {
      _isPressed = !_isPressed;
    });
    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: _isPressed ? 200 : 150,
      height: _isPressed ? 100 : 70,
      child: ElevatedButton.icon(
        onPressed: _handlePress,
        icon: Icon(widget.icon),
        label: Text(widget.text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.green,
        ),
      ),
    );
  }
}
