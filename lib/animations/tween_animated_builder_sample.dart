import 'package:flutter/material.dart';

class TweenAnimatedBuilderSample extends StatefulWidget {
  const TweenAnimatedBuilderSample({Key? key}) : super(key: key);

  @override
  State<TweenAnimatedBuilderSample> createState() => _TweenAnimatedBuilderSampleState();
}

class _TweenAnimatedBuilderSampleState extends State<TweenAnimatedBuilderSample> {
  double targetValue = 24;
  double startValue = 24;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: startValue, end: targetValue),
      duration: Duration(seconds: 2),
      child: const Icon(Icons.ac_unit_sharp),
      builder: (BuildContext context, double size, Widget? child) {
        return IconButton(
            onPressed: () {
              setState(() {
                targetValue = targetValue == 24 ? 48 : 24;
                startValue = startValue == 24 ? 24 : 48;
              });
            },
            iconSize: size,
            icon: child!);
      },
    );
  }
}
