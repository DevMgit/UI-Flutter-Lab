import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ResponsiveLayout());
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    var screenWidth = mediaQueryData.size.width;
    if (screenWidth < 400) {
      return Scaffold(
        appBar: AppBar(title: const Text('Watch Layout')),
        body: _buildWatchContainers(),
      );
    } else if (screenWidth < 600) {
      return Scaffold(
        appBar: AppBar(title: const Text('Mobile Layout')),
        body: _buildNarrowContainers(),
      );
    } else if (screenWidth < 1200) {
      return Scaffold(
        appBar: AppBar(title: const Text('Tablet Layout')),
        body: _buildMediumContainers(),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: const Text('Desktop Layout')),
        body: _buildWideContainers(),
      );
    }
  }

  Widget _buildNarrowContainers() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(color: Colors.red, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.blue, width: 100, height: 100),
      ],
    );
  }

  Widget _buildMediumContainers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(color: Colors.red, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.blue, width: 100, height: 100),
      ],
    );
  }

  Widget _buildWideContainers() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: <Widget>[
        Container(color: Colors.red, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.blue, width: 100, height: 100),
      ],
    );
  }

  Widget _buildWatchContainers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(color: Colors.red, width: 50, height: 50),
        Container(color: Colors.green, width: 50, height: 50),
        Container(color: Colors.blue, width: 50, height: 50),
      ],
    );
  }
}
