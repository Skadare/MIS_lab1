import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/models/exam_model.dart';


class ExamCard extends StatelessWidget{
    final Exam exam;
    const ExamCard({super.key, required this.exam});


  bool getTime(DateTime examDate) {
    return DateTime.now().isBefore(examDate);
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
        color: getTime(exam.dateTime) ? Colors.greenAccent.shade200 : Colors.red.shade200,
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4, bottom: 8),
            child: Text(exam.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
 ),
            Container(
              child: Row(

                children: [
                  Icon(Icons.room, size: 18,),
                  SizedBox(width: 8,),
                  Text(exam.examRooms.join(", "), style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.access_time_outlined, size: 18,),
                  SizedBox(width: 8,),
                  Text("${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year} "
                      "${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
    ),
      ),
    );
  }
}