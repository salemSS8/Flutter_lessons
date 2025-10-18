import 'package:flutter/material.dart';
import 'Tasks/tasks.dart';
import 'lessons/lessone_2_profile.dart';
import 'lessons/lessons_page.dart'; // صفحة الدروس

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة العناصر (كل عنصر فيه أيقونة، عنوان، والصفحة الخاصة به)
    final List<Map<String, dynamic>> items = [
      {'icon': Icons.book, 'title': 'الدروس', 'page': LessonsPage()},
      {
        'icon': Icons.play_lesson,
        'title': 'الواجبات',
        'page': const Taskspage(),
      },
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'الصفحة الرئيسية',
            style: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'Tasees',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.settings, color: Colors.blueGrey),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('settings button pressed')),
            );
          },
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (index) {
          // التعامل مع التنقل بين الصفحات بناءً على الفهرس المحدد
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          } else if (index == 1) {
            // صفحة البحث غير موجودة حالياً، يمكن إضافة صفحة بحث هنا
          } else if (index == 2) {
            // نحن بالفعل في الصفحة الرئيسية، لا حاجة للتنقل
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'بحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
        ],
      ),
    );
  }
}
