import 'package:flutter/material.dart';

class rotateboxpage extends StatelessWidget {
  const rotateboxpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            'الدرس الثامن',
            style: TextStyle(
              fontFamily: 'Tasees',
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 1,
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Center(child: Text('Hello, RotateBox!')),
          ),
        ),
      ),
    );
  }
}
