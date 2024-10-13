import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 15, 139, 193), // AppBar orqa foni
          title: Center(
            child: Text(
              'AnimatedContainer',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: AnimatedContainerExample(),
      ),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;

  void _changeContainer() {
    setState(() {
      _width = _width == 100 ? 200 : 100; // Kenglikni o'zgartirish
      _height = _height == 100 ? 200 : 100; // Bo'yini o'zgartirish
      _color = _color == Colors.blue ? Colors.red : Colors.blue; // Rangni o'zgartirish
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1), // Animatsiya davomiyligi
            width: _width,
            height: _height,
            color: _color,
            child: FlutterLogo(), // Ixtiyoriy kontent
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _changeContainer,
            child: Text('O\'zgartirish'),
          ),
        ],
      ),
    );
  }
}