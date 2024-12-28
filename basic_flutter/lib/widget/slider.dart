import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 0; // Nilai awal slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Example Slider"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _sliderValue,
              min: 0,
              max: 300,
              divisions: 300, // Jumlah langkah dalam slider
              label: _sliderValue.round().toString(), // Label saat digeser
              onChanged: (value) {
                setState(() {
                  _sliderValue = value; // Perbarui nilai slider
                });
              },
              activeColor: Colors.blue,
            ),
            Text('Selected Value: ${_sliderValue.round()}'), // Tampilkan nilai
          ],
        ),
      ),
    );
  }
}
