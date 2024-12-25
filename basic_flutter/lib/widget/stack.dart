import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Example Stack"),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
