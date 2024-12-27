import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Example icon"),
        body: Center(
          child: IconButton(
            onPressed: () => print("Icon di Click"),
            icon: const Icon(
              Icons.home,
              size: 100,
              color: Colors.black,
            ),
          ),
        ));
  }
}
