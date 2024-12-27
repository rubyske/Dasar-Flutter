import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Example ElevatedButton"),
      body: Center(
        child: ElevatedButton(
          onPressed: () => print("Tombol di Klik"),
          child: Text("Tekan Tombol ini"),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.grey;
                } else if (states.contains(WidgetState.disabled)) {
                  return Colors.black;
                }
                return Colors.black;
              },
            ),
            foregroundColor: const WidgetStatePropertyAll(Colors.white),
            padding: const WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
