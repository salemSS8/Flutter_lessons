import 'package:flutter/material.dart';

import 'home_page.dart';
import 'lessons/lesson1.dart';
import 'lessons/profile.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F3),
        title: const Center(
          child: Text(
            'الدروس',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2196F3), Color(0xFF9C27B0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              lessonCard(
                context,
                'Lesson 1: Building cards by column and row',
                const Lesson1Page(),
              ),
              lessonCard(
                context,
                'Lesson 2: Build a profile page',
                const Profile(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget لبناء البطاقة
  Widget lessonCard(BuildContext context, String title, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 24, color: Colors.blueAccent),
        ),
      ),
    );
  }
}
