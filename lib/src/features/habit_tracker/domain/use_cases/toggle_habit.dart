import 'package:habit_tracker_app/src/features/habit_tracker/domain/repositories/habit_repository.dart';
import 'package:habit_tracker_app/src/features/habit_tracker/domain/entities/habit.dart';

class ToggleHabit {
  final HabitRepository repository;

  ToggleHabit(this.repository);

  Future<void> call(Habit habit) async {
    final updatedHabit = habit.copyWith(completed: !habit.completed);
    await repository.updateHabit(updatedHabit);
  }
}

