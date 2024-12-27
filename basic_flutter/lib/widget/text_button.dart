import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Example TextButton"),
      body: Center(
        child: TextButton(
          onPressed: () => print("text di Click"),
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.blue;
                } else if (states.contains(WidgetState.disabled)) {
                  return Colors.black;
                }
                return Colors.black;
              },
            ),
          ),
          child: const Text(
            "Click Me",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
