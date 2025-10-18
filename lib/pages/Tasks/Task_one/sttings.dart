import 'package:flutter/material.dart';

class sttings_page extends StatelessWidget {
  const sttings_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Settings'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Account section
          const Text('Account', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text('Profile'),
                  subtitle: Text('Manage your profile information'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Security'),
                  subtitle: Text('Change password, 2FA'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Preferences
          const Text(
            'Preferences',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  value: false,
                  onChanged: (v) {},
                  title: const Text('Dark Mode'),
                  secondary: const Icon(Icons.dark_mode),
                ),
                const Divider(height: 1),
                SwitchListTile(
                  value: true,
                  onChanged: (v) {},
                  title: const Text('Notifications'),
                  secondary: const Icon(Icons.notifications),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Language & Privacy
          const Text('More', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  subtitle: Text('English'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text('Privacy & Policy'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('About'),
                  subtitle: Text('Version 1.0.0'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Logout
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.red,
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text('Log out', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Footer note
          Center(
            child: Text(
              'Changes are design-only and non-functional',
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
