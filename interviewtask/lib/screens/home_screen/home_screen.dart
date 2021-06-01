import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Stopwatch? _stopwatch;
  Timer? _timer;
  int _counter = 0;
  _startStopWatch() {
    _stopwatch!.start();
    _timer = new Timer.periodic(new Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  void initState() {
    _stopwatch = Stopwatch();
    _startStopWatch();
    super.initState();
  }

  String formatTime(int milliseconds) {
    var secs = milliseconds ~/ 1000;
    var hours = (secs ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  formatTime(_stopwatch!.elapsedMilliseconds),
                  style: TextStyle(fontSize: 48.0),
                ),
              ),
            ),
            Divider(color: Colors.blueGrey),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => setState(() {
                      _counter--;
                    }),
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(fontSize: 48.0),
                  ),
                  IconButton(
                    onPressed: () => setState(() {
                      _counter++;
                    }),
                    icon: const Icon(Icons.add, color: Colors.green),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
