// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final int hour;

  const CountdownTimer({Key? key, required this.hour}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  late int _currentSeconds;

  @override
  void initState() {
    super.initState();
    _currentSeconds = widget.hour * 3600; // Convert hours to seconds
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_currentSeconds <= 0) {
        timer.cancel();
        // Optionally, you can add code here to execute when the countdown is complete.
      } else {
        setState(() {
          _currentSeconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime;
    if (_currentSeconds >= 3600) {
      int hours = (_currentSeconds ~/ 3600).toInt();
      int minutes = ((_currentSeconds % 3600) ~/ 60).toInt();
      formattedTime = '$hours h ${minutes}min to finish';
    } else {
      int minutes = (_currentSeconds ~/ 60).toInt();
      int seconds = (_currentSeconds % 60).toInt();
      formattedTime = '$minutes min ${seconds}s to finish';
    }

    return Text(
      formattedTime,
      style: const TextStyle(fontSize: 24),
    );
  }
}
