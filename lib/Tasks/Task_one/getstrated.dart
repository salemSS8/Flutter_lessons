import 'package:flutter/material.dart';
import 'Home.dart';
import 'aboutas.dart';
import 'contactas.dart';

class Getstrated extends StatelessWidget {
  const Getstrated({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'icon': Icons.home, 'title': 'Home', 'page': const Homepage()},
      {
        'icon': Icons.info_rounded,
        'title': 'About As',
        'page': const Aboutasbage(),
      },
      {
        'icon': Icons.contact_emergency,
        'title': 'Contact As',
        'page': const Contactaspage(),
      },
      {
        'icon': Icons.play_lesson,
        'title': 'الواجبات',
        'page': const Homepage(),
      },
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Text('Get Started', style: TextStyle(color: Colors.white)),
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
            return Card(
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
            );
          },
        ),
      ),
    );
  }
}
