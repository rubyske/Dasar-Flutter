import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Example Expanded"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(color: Colors.red),
            ),
            Expanded(
              child: Container(color: Colors.green),
            ),
            Expanded(
              child: Container(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
