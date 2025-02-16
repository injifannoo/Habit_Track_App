import 'package:habit_tracker/features/habit_tracker/domain/repositories/habit_repository.dart';
import 'package:habit_tracker/features/habit_tracker/domain/entities/habit.dart';

class AddHabit implements UseCase<void, Habit> {
  final HabitRepository repository;

  AddHabit(this.repository);

  @override
  Future<void> call(Habit habit) async {
    await repository.addHabit(habit);
  }
}
