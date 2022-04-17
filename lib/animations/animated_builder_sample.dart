import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderSample extends StatefulWidget {
  const AnimatedBuilderSample({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderSample> createState() => _AnimatedBuilderSampleState();
}

class _AnimatedBuilderSampleState extends State<AnimatedBuilderSample>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 5));

  @override
  void initState() {
    _controller.repeat();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: const Center(
          child: Text(
            "whee!",
            style: TextStyle(color: Colors.blue,fontSize: 25),
          ),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
    );
  }
}
