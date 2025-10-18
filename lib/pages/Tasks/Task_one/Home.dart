import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: const Icon(
                      Icons.school,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('Learn Flutter with concise, practical examples.'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Search (design-only)
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search lessons, topics...',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Feature grid
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _FeatureCard(
                    icon: Icons.info_outline,
                    title: 'About',
                    color: Colors.orange,
                  ),
                  _FeatureCard(
                    icon: Icons.contact_mail,
                    title: 'Contact',
                    color: Colors.blue,
                  ),
                  _FeatureCard(
                    icon: Icons.book,
                    title: 'Lessons',
                    color: Colors.green,
                  ),
                  _FeatureCard(
                    icon: Icons.settings,
                    title: 'Settings',
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // Quick actions
              const Text(
                'Quick Actions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow),
                      label: const Text('Start Lesson'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark),
                      label: const Text('Saved'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Footer / note
              Center(
                child: Text(
                  'Tip: Tap a card to view details',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'Version 1.0.0',
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'New',
      ),
    );
  }
}

// Small internal widget used by the page (design-only)
class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: color,
                child: Icon(icon, color: Colors.white),
              ),
              const SizedBox(height: 12),
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
