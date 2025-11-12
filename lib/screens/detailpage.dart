
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/models/exam_model.dart';
import 'package:lab1/widgets/time_till_exam.dart';

class DetailPage extends StatelessWidget{
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       title: Text(exam.name),
        backgroundColor: Colors.cyan.shade200,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Padding(padding: EdgeInsets.all(12),
              child: Wrap(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.cyan.shade200, borderRadius: BorderRadius.circular(5), ),
                    padding: EdgeInsets.all(12),
                    child: Text("Предмет: ${exam.name}", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                  )],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.room),
                SizedBox(width: 8,),
                Expanded(child: Text("Простории: ${exam.examRooms.join(", ")}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),))
              ],
            ),
            ),
            Padding(
                padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.access_time_filled),
                  SizedBox(width: 8,),
                  Expanded(child: Text("Датум и време: ${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year} "
                      "${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
            SizedBox(height: 18,),
            TimeTillExamData(dateTime: exam.dateTime),
          ],
        ),
      ),
    );
  }

}