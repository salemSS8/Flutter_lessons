import 'package:flutter/material.dart';

class cardLesonPage extends StatelessWidget {
  const cardLesonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            'الدرس السادس',
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
      body: Column(children: [cards(), cards(), cards()]),
    );
  }

  Padding cards() {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 20,
        child: ListTile(
          title: Text('salem bashnddof'),
          subtitle: Text('An student at university of AL-Ahqaff'),
          leading: Icon(Icons.person, color: Colors.blueGrey, size: 40),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
