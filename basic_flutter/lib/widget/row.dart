import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Example Row"),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Red",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    "Yellow",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Green",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
