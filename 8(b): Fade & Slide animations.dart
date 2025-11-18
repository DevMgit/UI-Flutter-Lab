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
        child: FadeIconTextButton(
          icon: Icons.star,
          text: 'Vote',
          onPressed: () { print("Button Pressed!"); },
        ),
      ),
    );
  }
}

class FadeIconTextButton extends StatefulWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const FadeIconTextButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<FadeIconTextButton> createState() => _FadeIconTextButtonState();
}

class _FadeIconTextButtonState extends State<FadeIconTextButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  void _handlePress() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    widget.onPressed();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: ElevatedButton.icon(
        onPressed: _handlePress,
        icon: Icon(widget.icon),
        label: Text(widget.text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
