import 'package:first_project/pages/lessons/lessons_3/bottuns.dart';
import 'package:flutter/material.dart';
import 'lesson1.dart';
import 'lesson_6_card.dart';
import 'lesson_7_cpaser.dart';
import 'lesson_8_rotatebox.dart';
import 'lessons_3/lesson_3.dart';
import 'lessons_3/gridview.dart';
import 'lessone_2_profile.dart';

// ignore: must_be_immutable
class LessonsPage extends StatelessWidget {
  LessonsPage({super.key});

  List<Map> lessons = [
    {'title': 'الدرس الأول', 'page': Lesson1Page()},
    {'title': 'الدرس الثاني', 'page': Profile()},
    {'title': 'الدرس الثالث', 'page': lessons_3()},
    {'title': 'الدرس الرابع', 'page': gridviewpage()},
    {'title': 'الدرس الخامس', 'page': BottunsPage()},
    {'title': 'الدرس السادس', 'page': cardLesonPage()},
    {'title': 'الدرس السابع', 'page': lesson_7()},
    {'title': 'الدرس الثامن', 'page': rotateboxpage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'الدروس',
            style: TextStyle(
              fontFamily: 'Tasees',
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          ...List.generate(lessons.length, (index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.all(16),
              child: ListTile(
                title: Text(
                  textAlign: TextAlign.end,
                  lessons[index]['title'],
                  style: const TextStyle(
                    fontFamily: 'Tasees',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: const Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => lessons[index]['page'],
                    ),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
