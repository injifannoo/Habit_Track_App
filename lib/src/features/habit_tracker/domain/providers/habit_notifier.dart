import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/habit.dart';

class HabitNotifier extends StateNotifier<List<Habit>> {
  HabitNotifier() : super([]);

  void addHabit(String name) {
    state = [...state, Habit(name: name, completed: false)];
  }

  void toggleHabit(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) state[i].toggle() else state[i]
    ];
  }
}

// Creating the provider for HabitNotifier
final habitProvider = StateNotifierProvider<HabitNotifier, List<Habit>>((ref) {
  return HabitNotifier();
});
