import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habit Tracker app'),
      ),
      body: const Center(
        child: Text('Welcome to Habit Tracker! I am here to change your habits.'),
      ),
    );
  }
}