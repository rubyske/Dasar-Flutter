import 'package:basic_flutter/widget/tools/my_app_bar.dart';
import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  const Myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Example Image",
        fontSize: 20,
      ),
      body: ExampleImageNetwork(),
    );
  }
}

class ExampleImageAsset extends StatelessWidget {
  const ExampleImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/image/image_1.jpg",
      ),
    );
  }
}

class ExampleImageNetwork extends StatelessWidget {
  const ExampleImageNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          "https://picsum.photos/id/237/500",
        ),
      ),
    );
  }
}
