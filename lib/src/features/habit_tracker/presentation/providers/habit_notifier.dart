import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_tracker_app/src/features/habit_tracker/domain/use_cases/add_habit.dart';
import 'package:habit_tracker_app/src/features/habit_tracker/domain/use_cases/toggle_habit.dart';
import 'package:habit_tracker_app/src/features/habit_tracker/domain/entities/habit.dart';

class HabitNotifier extends StateNotifier<List<Habit>> {
  final AddHabit addHabit;
  final ToggleHabit toggleHabit;

  HabitNotifier(this.addHabit, this.toggleHabit) : super([]);

  void addNewHabit(String name) {
    final habit = Habit(name: name, completed: false);
    addHabit(habit);
    state = [...state, habit];
  }

  void toggleHabitStatus(int index) {
    toggleHabit(index);
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) state[i].toggle() else state[i]
    ];
  }
}
