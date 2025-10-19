import 'package:flutter/material.dart';

class opicitypage extends StatelessWidget {
  const opicitypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            'الدرس العاشر',
            style: TextStyle(
              fontFamily: 'Tasees',
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.1,
            child: Container(height: 100, color: Colors.white),
          ),
          Opacity(
            opacity: 0.3,
            child: Container(height: 100, color: Colors.white),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(height: 100, color: Colors.white),
          ),
          Opacity(
            opacity: 0.7,
            child: Container(height: 100, color: Colors.white),
          ),
          Opacity(
            opacity: 0.9,
            child: Container(height: 100, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
