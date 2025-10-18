import 'package:flutter/material.dart';


class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F3),
        title: const Center(
          child: Text(
            'الدرس الثالث',
            style: TextStyle(
              fontFamily: 'Tasees',
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.menu),
              title: Text('menu $index'),
              iconColor: Colors.white,
              textColor: Colors.white,
              tileColor: Colors.blue,
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.black);
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
