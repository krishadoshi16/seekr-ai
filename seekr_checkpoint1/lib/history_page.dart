import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F1A),
      appBar: AppBar(
        title: const Text("Chat History"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          HistoryCard(title: "Session 1", subtitle: "3 messages"),
          HistoryCard(title: "Session 2", subtitle: "5 messages"),
          HistoryCard(title: "Session 3", subtitle: "2 messages"),
        ],
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const HistoryCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1C1C2A),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        subtitle:
        Text(subtitle, style: const TextStyle(color: Colors.white54)),
      ),
    );
  }
}
