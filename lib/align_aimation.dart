import 'package:flutter/material.dart';

class AlignAnimationSample extends StatefulWidget {
  const AlignAnimationSample({Key? key}) : super(key: key);

  @override
  State<AlignAnimationSample> createState() => _AlignAnimationSampleState();
}

class _AlignAnimationSampleState extends State<AlignAnimationSample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.bounceIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
