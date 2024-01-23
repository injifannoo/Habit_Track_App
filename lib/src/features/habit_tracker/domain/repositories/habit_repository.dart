import 'package:habit_tracker_app/src/features/habit_tracker/domain/entities/habit.dart';

abstract class HabitRepository {
  Future<List<Habit>> getHabits();
  Future<void> addHabit(Habit habit);
  Future<void> toggleHabit(int index);
}
