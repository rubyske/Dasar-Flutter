import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Example CheckBox"),
      body: ExampleCheckBox(),
    );
  }
}

class ExampleCheckBox extends StatefulWidget {
  const ExampleCheckBox({super.key});

  @override
  State<ExampleCheckBox> createState() => _ExampleCheckBoxState();
}

class _ExampleCheckBoxState extends State<ExampleCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(
            isChecked ? 'Checked' : 'Unchecked',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
