import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/models/exam_model.dart';
import 'package:lab1/widgets/exam_card.dart';

class ListExams extends StatefulWidget{
  final List<Exam> exams;
  const ListExams({super.key, required this.exams});

  @override
  State<ListExams> createState() => _ListExams();
}

class _ListExams extends State<ListExams>{
  late List<Exam> sorted;

  List<Exam> filterDatesChronologically(List<Exam> exams){
    final List<Exam> newList = List<Exam>.from(exams);
    final List<Exam> sorted = <Exam>[];
    while(newList.isNotEmpty){
      int min = 0;
      for(int i = 1;i<newList.length;i++){
        final first = newList[i];
        final remaining = newList[min];
        if(first.dateTime.isBefore(remaining.dateTime)){
          min = i;
        }
      }
      sorted.add(newList.removeAt(min));
    }
    return sorted;
  }

  @override
  void initState() {
    super.initState();
    sorted = filterDatesChronologically(widget.exams);
  }

  @override
  void didUpdateWidget(covariant ListExams oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(!identical(oldWidget.exams, widget.exams)){
      sorted = filterDatesChronologically(widget.exams);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(12),
      itemCount: sorted.length,
      itemBuilder: (context, index){
        return ExamCard(exam: sorted[index]);
      },
    );
  }

}