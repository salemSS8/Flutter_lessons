import 'package:flutter/material.dart';

class BottunsPage extends StatelessWidget {
  const BottunsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text('الدرس الخامس', style: TextStyle(color: Colors.white)),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
