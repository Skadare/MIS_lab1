
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeTillExamData extends StatefulWidget{
  final DateTime dateTime;
  const TimeTillExamData({super.key, required this.dateTime});

  @override
  State<TimeTillExamData> createState()=>_TimeTillExamData();
}

class _TimeTillExamData extends State<TimeTillExamData>{
  Timer? _timer;

  @override
  void initState(){
    super.initState();
    _timer = Timer.periodic(const Duration(hours: 1), (_){
      if(mounted){
        setState(() {
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _calculateTime(DateTime dateTime){
    final DateTime today = DateTime.now();
    final result = dateTime.difference(today);
    if(result.isNegative){
      return ("Испотот е пројден.");
    }
    else{
      return ("Испитот е за ${result.inDays} дена и ${(result.inHours)%24} саати");
    }
  }

  bool _calculateTimeColor(DateTime dateTime){
    final int day = DateTime.now().day;
    final int hour = DateTime.now().hour;
    if(dateTime.day-day<0){
      return false;
    }
    if (dateTime.day-day==0 && dateTime.hour-hour>0){
      return true;
    }
    return true;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: _calculateTimeColor(widget.dateTime) ? Colors.green.shade300 : Colors.red.shade400,borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(12),
        child: Text(_calculateTime(widget.dateTime), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
    );
  }

}

