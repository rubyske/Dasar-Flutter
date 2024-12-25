import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Example Container",
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          color: Colors.black,
          child: const Center(
            child: Text(
              "Example Container",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
