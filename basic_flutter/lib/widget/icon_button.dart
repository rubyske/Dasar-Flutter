import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Example Icon Button"),
      body: Center(
        child: IconButton(
          onPressed: () => print("Icon di Click"),
          icon: Icon(
            Icons.home,
          ),
          iconSize: 150,
          tooltip: 'home',
          color: Colors.red,
        ),
      ),
    );
  }
}
