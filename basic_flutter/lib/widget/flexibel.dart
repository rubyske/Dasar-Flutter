import 'package:flutter/material.dart';

class MyFlexibel extends StatelessWidget {
  const MyFlexibel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flexible Example')),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(color: Colors.red),
          ),
          Flexible(
            flex: 1,
            child: Container(color: Colors.green),
          ),
          Flexible(
            flex: 2,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
