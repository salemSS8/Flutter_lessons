import 'package:flutter/material.dart';

class textspanpage extends StatelessWidget {
  const textspanpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            'الدرس التاسع',
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
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'Hello ',
            style: TextStyle(color: Colors.black, fontSize: 30),
            children: <TextSpan>[
              TextSpan(
                text: 'bold',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: ' world! ',
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: 'italic',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
