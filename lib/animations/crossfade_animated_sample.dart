import 'package:flutter/material.dart';

class CrossfadeAnimatedSample extends StatefulWidget {
  const CrossfadeAnimatedSample({Key? key}) : super(key: key);

  @override
  State<CrossfadeAnimatedSample> createState() => _CrossfadeAnimatedSampleState();
}

class _CrossfadeAnimatedSampleState extends State<CrossfadeAnimatedSample> {
  bool _first=true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _first=!_first;
        });
      },
      child: AnimatedCrossFade(
        duration: const Duration(seconds: 3),
        firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
        secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
        crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}
