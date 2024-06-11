import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_tracker_app/src/features/habit_tracker/data/models/habit_model.dart';
// Habit Model
class Habit {
  final String name;
  bool completed;

  Habit({required this.name, this.completed = false});
}

// State Notifier to Manage Habits
class HabitNotifier extends StateNotifier<List<Habit>> {
  HabitNotifier() : super([]);

  void addNewHabit(String name) {
    state = [...state, Habit(name: name)];
  }

  void toggleHabitStatus(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index)
          Habit(name: state[i].name, completed: !state[i].completed)
        else
          state[i]
    ];
  }
}

// Defining the Provider
final habitProvider = StateNotifierProvider<HabitNotifier, List<Habit>>(
  (ref) => HabitNotifier(),
);
