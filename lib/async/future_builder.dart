import 'package:flutter/material.dart';

class FutureBuilderSample extends StatefulWidget {
  const FutureBuilderSample({Key? key}) : super(key: key);

  @override
  State<FutureBuilderSample> createState() => _FutureBuilderSampleState();
}

class _FutureBuilderSampleState extends State<FutureBuilderSample> {
  final Future<String> _calculation = Future.delayed(
    Duration(seconds: 5),
    () {
      return "data loaded";
    },
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(style: Theme.of(context).textTheme.displayMedium!,
        textAlign: TextAlign.center,
        child: FutureBuilder(
          future: _calculation,
          builder: (
              BuildContext context,
              AsyncSnapshot<dynamic> snapshot
              ) {
            List<Widget> children;
            if(snapshot.hasData) {
                children = <Widget>[
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Result: ${snapshot.data}'),
                  )
                ];
              }
            else if (snapshot.hasError) {
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                )
              ];
            }
            else {
              children = const <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                )
              ];
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            );
          },

        ));
  }
}
