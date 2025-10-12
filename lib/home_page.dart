import 'package:flutter/material.dart';
import 'Tasks/tasks.dart';
import 'lessons/lessone_2_profile.dart';
import 'lessons_page.dart'; // صفحة الدروس

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة العناصر (كل عنصر فيه أيقونة، عنوان، والصفحة الخاصة به)
    final List<Map<String, dynamic>> items = [
      {'icon': Icons.book, 'title': 'الدروس', 'page': LessonsPage()},
      {'icon': Icons.person, 'title': 'الملف الشخصي', 'page': const Profile()},
      {'icon': Icons.settings, 'title': 'الإعدادات', 'page': const Profile()},
      {
        'icon': Icons.play_lesson,
        'title': 'الواجبات',
        'page': const Taskspage(),
      },
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            'الصفحة الرئيسية',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Tasees',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                  elevation: 6,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item['icon'], size: 48, color: Colors.blueGrey),
                      const SizedBox(height: 10),
                      Text(
                        item['title'],
                        style: const TextStyle(
                          fontFamily: 'Tasees',
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
