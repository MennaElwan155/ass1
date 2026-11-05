import 'package:flutter/material.dart';
import 'contact_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;

    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: primary.withAlpha(30),
                child: Icon(Icons.person, size: 60, color: primary),
              ),
              const SizedBox(height: 16),
              Text(
                'About Page',
                style: theme.textTheme.headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'This app was built with Flutter to practice navigation '
                        'between pages using Scaffold, AppBar, and Navigator.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, height: 1.6),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              FilledButton.icon(
                icon: const Icon(Icons.contact_mail_outlined),
                label: const Text('Go to Contact'),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ContactPage()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}