import 'package:flutter/material.dart';

import '../lessons/lesson1.dart';
import '../lessons/lessone_2_profile.dart';
import 'Task_one/getstrated.dart';

class Taskspage extends StatelessWidget {
  const Taskspage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> lessons = [
      {'title': 'الواجب الأول الكونينارات', 'page': Lesson1Page()},
      {'title': 'الواجب الثاني الملف الشخصي', 'page': Profile()},
      {'title': 'الواجب الثالث', 'page': Taskspage()},
      {'title': 'الواجب الرابع', 'page': Taskspage()},
      {'title': 'الواجب الخامس المشترك', 'page': Getstrated()},
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'الواجبات',
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
