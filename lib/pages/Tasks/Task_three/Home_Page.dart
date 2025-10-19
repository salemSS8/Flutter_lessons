import 'package:flutter/material.dart';

import '../../lessons/lesson_10.dart';
import '../../lessons/lesson_6_card.dart';
import '../../lessons/lesson_7_cpaser.dart';
import '../../lessons/lesson_8_rotatebox.dart';
import '../../lessons/lesson_9.dart';

class Home_page_Task_three extends StatelessWidget {
  const Home_page_Task_three({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'icon': Icons.play_lesson,
        'title': 'cards',
        'page': const cardLesonPage(),
      },
      {'icon': Icons.play_lesson, 'title': 'opacity', 'page': const lesson_7()},
      {
        'icon': Icons.play_lesson,
        'title': 'rotatedbox',
        'page': const rotateboxpage(),
      },
      {
        'icon': Icons.play_lesson,
        'title': 'space',
        'page': const opicitypage(),
      },
      {
        'icon': Icons.play_lesson,
        'title': 'textspan',
        'page': const textspanpage(),
      },
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Text(
            'Get Start',
            style: TextStyle(color: Colors.white, fontFamily: 'Tasees'),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item['page']),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item['icon'], size: 50, color: Colors.blueGrey),
                    SizedBox(height: 16),
                    Text(
                      item['title'],
                      style: TextStyle(
                        fontFamily: 'Tasees',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
