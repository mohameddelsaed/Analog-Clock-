import 'dart:async';

import 'package:flutter/material.dart';

import '../../../size_config.dart';


class TimeHourAndMinute extends StatefulWidget {
  const TimeHourAndMinute({super.key});

  @override
  State<TimeHourAndMinute> createState() => _TimeHourAndMinuteState();
}

class _TimeHourAndMinuteState extends State<TimeHourAndMinute> {
  TimeOfDay _timeOfDay  = TimeOfDay.now();
  @override

  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute!= TimeOfDay.now().minute ){
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    String _period  = _timeOfDay.period == DayPeriod.am ? "AM" :"PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hourOfPeriod}:${_timeOfDay.minute}",
          style:
          Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(width: 5,),
        RotatedBox(
            quarterTurns: 3,
            child: Text(_period,style: TextStyle(fontSize: getProportionateScreenWidth(18)),)),
      ],
    );
  }
}