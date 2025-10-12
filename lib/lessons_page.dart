import 'package:first_project/lessons/lessons_3/bottuns.dart';
import 'package:flutter/material.dart';
import 'lessons/lesson1.dart';
import 'lessons/lesson_6.dart';
import 'lessons/lesson_7.dart';
import 'lessons/lesson_8.dart';
import 'lessons/lessons_3/listview.dart';
import 'lessons/lessons_3/gridview.dart';
import 'lessons/lessone_2_profile.dart';

// ignore: must_be_immutable
class LessonsPage extends StatelessWidget {
  LessonsPage({super.key});

  List<Map> lessons = [
    {'title': 'الدرس الأول', 'page': Lesson1Page()},
    {'title': 'الدرس الثاني', 'page': const Profile()},
    {'title': 'الدرس الثالث', 'page': ListViewPage()},
    {'title': 'الدرس الرابع', 'page': gridviewpage()},
    {'title': 'الدرس الخامس', 'page': const BottunsPage()},
    {'title': 'الدرس السادس', 'page': const cardLesonPage()},
    {'title': 'الدرس السابع', 'page': const lesson_7()},
    {'title': 'الدرس الثامن', 'page': const rotateboxpage()},
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
