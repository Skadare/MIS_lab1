
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/models/exam_model.dart';
import 'package:lab1/widgets/list_exams.dart';

class HomePage extends StatefulWidget{
    const HomePage({super.key, required this.title});
    final String title;

    @override
    State<HomePage> createState()=>_HomePage();
}

class _HomePage extends State<HomePage>{
  final List<Exam> _exams = [
    Exam(
      name: "Калкулус 1",
      dateTime: DateTime(2025, 11, 10, 10, 0),
      examRooms: ["223", "225", "АМФ ФИНКИ Г"],
    ),
    Exam(
      name: "Дискретни структури 1",
      dateTime: DateTime(2025, 11, 19, 14, 0),
      examRooms: ["Барака1", "Барака3.2"],
    ),
    Exam(
      name: "Структурно програмирање",
      dateTime: DateTime(2025, 11, 22, 10, 0),
      examRooms: ["Лаб.215", "Лаб.200АБ", "Лаб.13", "Лаб.12"],
    ),
    Exam(
      name: "Вовед во компјутерски науки",
      dateTime: DateTime(2025, 11, 09, 19, 0),
      examRooms: ["Лаб.138", "Лаб.200АБ", "Лаб200В", "Лаб.12"],
    ),
    Exam(
      name: "Напредно програмирање",
      dateTime: DateTime(2025, 11, 24, 12, 0),
      examRooms: ["Лаб.215", "Лаб.200АБ", "Лаб.13", "Лаб.12"],
    ),
    Exam(
      name: "Интернет програмирање на клиентска страна",
      dateTime: DateTime(2025, 11, 8, 10, 0),
      examRooms: ["Лаб.138", "Лаб.200АБ", "Лаб.2", "Лаб.3"],
    ),
    Exam(
      name: "Веројатност и статистика",
      dateTime: DateTime(2025, 11, 18, 16, 0),
      examRooms: ["223", "225", "АМФ ФИНКИ Г", "Барака1"],
    ),
    Exam(
      name: "Линеарна алгебра и примни",
      dateTime: DateTime(2025, 11, 18, 10, 0),
      examRooms: ["223", "225", "АМФ ФИНКИ Г", "Барака1"],
    ),
    Exam(
      name: "Алгоритми и податочни структури",
      dateTime: DateTime(2025, 11, 6, 9, 0),
      examRooms: ["Лаб.200АБ","Лаб200В","Лаб.12","Лаб.2","Лаб.3",],
    ),
    Exam(
      name: "Бази на податоци",
      dateTime: DateTime(2025, 11, 22, 15, 0),
      examRooms: ["Лаб200В", "Лаб.12", "Лаб. 2", "Лаб.3"],
    ),
    Exam(
      name: "Веб програмирање",
      dateTime: DateTime(2025, 11, 24, 17, 0),
      examRooms: ["Лаб.200АБ", "Лаб200В", "Лаб.12"],
    ),
    Exam(
      name: "Програмски парадигми",
      dateTime: DateTime(2025, 11, 20, 15, 0),
      examRooms: ["Лаб.2", "Лаб.3"],
    ),
    Exam(
      name: "Мрежна безбедност",
      dateTime: DateTime(2025, 11, 21, 13, 0),
      examRooms: ["Лаб.200АБ"],
    ),
    Exam(
      name: "Компјутерски мрежи",
      dateTime: DateTime(2025, 11, 19, 15, 0),
      examRooms: ["Лаб.200АБ", "Лаб200В", "Лаб.12", "Лаб.2", "Лаб.3"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
       Column(
        children: [
          Expanded( child: ListExams(exams: _exams)),
          Container(
              width: double.infinity,
              color: Colors.cyan.shade200,
              padding: EdgeInsets.all(8),
              child: Text("Вкупен број на испити: ${_exams.length}",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

          ),
      ],
    )
    );
  }


}