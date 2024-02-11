import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HabitTrackerScreen extends ConsumerWidget {
  const HabitTrackerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final habits = ref.watch(habitProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Habit Tracker')),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) {
          final habit = habits[index];
          return ListTile(
            title: Text(habit.name),
            trailing: Icon(
              habit.completed ? Icons.check_circle : Icons.circle,
              color: habit.completed ? Colors.green : Colors.grey,
            ),
            onTap: () => ref.read(habitProvider.notifier).toggleHabitStatus(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddHabitDialog(context, ref);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddHabitDialog(BuildContext context, WidgetRef ref) {
    final TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add a new Habit'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Habit name'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  ref.read(habitProvider.notifier).addNewHabit(controller.text);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Add'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
