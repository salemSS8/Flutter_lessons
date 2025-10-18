import 'package:flutter/material.dart';

class Aboutasbage extends StatelessWidget {
  const Aboutasbage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('About Us'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            Center(
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(
                  Icons.info_outline,
                  size: 48,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                'App / Company Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'This app helps users learn and build useful Flutter examples. '
                  'Short description goes here to convey purpose and value.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.flag),
                title: const Text('Our Mission'),
                subtitle: const Text(
                  'Provide clear, practical lessons and examples.',
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                leading: const Icon(Icons.visibility),
                title: const Text('Our Vision'),
                subtitle: const Text(
                  'Make learning accessible and enjoyable for everyone.',
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Contact',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.email),
                SizedBox(width: 8),
                Expanded(child: Text('email@example.com')),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.link),
                SizedBox(width: 8),
                Expanded(child: Text('https://example.com')),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).maybePop(),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back'),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                'Version 1.0.0',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
