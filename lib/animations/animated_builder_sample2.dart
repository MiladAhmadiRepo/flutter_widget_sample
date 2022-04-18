import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderSample2 extends StatefulWidget {
  const AnimatedBuilderSample2({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderSample2> createState() => _AnimatedBuilderSampleState2();
}

class _AnimatedBuilderSampleState2 extends State<AnimatedBuilderSample2>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 5));
  late final Animation animation;
  @override
  void initState() {
    _controller.repeat();
    animation = Tween(begin: 0, end: 2 * math.pi).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: const Center(
          child: Text(
            "whee!",
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: animation.value,
          child: child,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
