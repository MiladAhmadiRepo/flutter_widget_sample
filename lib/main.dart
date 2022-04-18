import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/animations/align_aimation.dart';
import 'package:flutter_widget_sample/animations/tween_animated_builder_sample.dart';
import 'animations/animated_builder_sample.dart';
import 'animations/animated_builder_sample2.dart';
import 'animations/container_animated_sample.dart';
import 'animations/crossfade_animated_sample.dart';
import 'async/future_builder.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:FutureBuilderSample()
      ),
    );
  }
}
