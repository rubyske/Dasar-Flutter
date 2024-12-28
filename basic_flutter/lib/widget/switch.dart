import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Example Switch"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isSwitch ? "Switch Aktif" : "Switch Tidak Aktif",
              style: TextStyle(fontSize: 20),
            ),
            Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(
                  () {
                    isSwitch = value;
                  },
                );
              },
              activeColor: Colors.blue,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
