import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            // Load a Lottie file from your assets
            Lottie.asset('assets/animation/success.json',width: 100,height: 100),

            // Load a Lottie file from a remote url
            //Lottie.network(
             // 'https://assets6.lottiefiles.com/packages/lf20_s2lryxtd.json'),

            // Load an animation and its images from a json file
            // Lottie.asset('assets/lottiefiles/angel.json'),
          ],
        ),
      ),
    );
  }
}
