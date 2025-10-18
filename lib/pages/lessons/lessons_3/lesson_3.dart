import 'package:flutter/material.dart';

class lessons_3 extends StatelessWidget {
  const lessons_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "مواضيع الدرس الثالث ",
            style: TextStyle(fontFamily: 'Tasees', color: Colors.white),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Center(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.white,
                  child: Text("data"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
