import 'package:flutter/material.dart';

class ContainerAnimatedSample extends StatefulWidget {
  const ContainerAnimatedSample({Key? key}) : super(key: key);

  @override
  State<ContainerAnimatedSample> createState() => _ContainerAnimatedSampleState();
}

class _ContainerAnimatedSampleState extends State<ContainerAnimatedSample> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected=!selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 5),
          width: selected?200:400,
          height: selected?200:400,
          color: selected?Colors.red:Colors.blue,
          alignment: selected?Alignment.center:Alignment.topCenter,
          curve: Curves.easeInOut,
          child: FlutterLogo(size: 75,),

        ),
      ),
    );
  }
}
