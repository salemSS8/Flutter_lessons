import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F3),
        title: const Text(
          'الملف الشخصي',
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // صورة الملف
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile.png'),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 20),

            // الاسم الكامل
            buildProfileRow(
              icon: Icons.person,
              label: 'name:',
              value: 'Salem Bashndoof',
              font: 'Cursive',
            ),

            const SizedBox(height: 15),

            // رقم التواصل
            buildProfileRow(
              icon: Icons.phone,
              label: 'contact num:',
              value: '+967 778 928 541',
              font: 'Cursive',
            ),

            const SizedBox(height: 15),

            // البريد الإلكتروني
            buildProfileRow(
              icon: Icons.email,
              label: 'mail:',
              value: 'salembashndoof@gmail.com',
              font: 'Cursive',
            ),

            const SizedBox(height: 25),

            // السوشيال ميديا
            const Text(
              'روابط التواصل الاجتماعي',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cursive',
              ),
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialIcon(FontAwesomeIcons.facebook, Colors.blue),
                socialIcon(FontAwesomeIcons.phone, Colors.green),
                socialIcon(FontAwesomeIcons.telegram, Colors.lightBlue),
              ],
            ),

            const SizedBox(height: 30),

            // المهارات
            const Text(
              'المهارات',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cursive',
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Flutter, Dart, PHP, Python',
              style: TextStyle(
                fontFamily: 'Cursive',
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // الوظيفة أو التخصص
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: const Center(
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'Cursive',
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 ويدجت مخصصة لصفوف المعلومات (الاسم، الهاتف، الإيميل)
  Widget buildProfileRow({
    required IconData icon,
    required String label,
    required String value,
    required String font,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueGrey),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              '$label  $value',
              style: TextStyle(
                fontFamily: font,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 ويدجت مخصصة لأيقونات السوشيال ميديا
  Widget socialIcon(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: IconButton(
        icon: Icon(icon, color: color, size: 30),
        onPressed: () {},
      ),
    );
  }
}
