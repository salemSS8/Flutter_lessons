import 'package:flutter/material.dart';

class Contactaspage extends StatelessWidget {
  const Contactaspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Contact Us'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(
                  Icons.contact_mail,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                'Get in touch',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'We would love to hear from you. Reach out using any of the methods below.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Phone'),
                subtitle: const Text('+1 (555) 123-4567'),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                subtitle: const Text('support@example.com'),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Address'),
                subtitle: const Text('123 Flutter St, Dart City'),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Follow Us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.telegram)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.web)),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Message',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Write your message here...',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text('Send Message'),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                'Typical response time: within 2 business days',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
