import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({super.key});
  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<MyGestureDetector> {
  double _width = 100.0;
  double _height = 100.0;

  void _increaseSize() {
    setState(() {
      _width += 20;
      _height += 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "GestureDetector Example"),
      body: Center(
        child: GestureDetector(
          onTap: _increaseSize,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: _width,
            height: _height,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
