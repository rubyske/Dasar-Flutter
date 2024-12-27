import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Example OutlineButton"),
      body: Center(
        child: OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            side: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.hovered)) {
                  return BorderSide(color: Colors.red, width: 2);
                }
                return BorderSide(color: Colors.black, width: 2);
              },
            ),
          ),
          child: const Text('Dynamic Outlined Button'),
        ),
      ),
    );
  }
}
