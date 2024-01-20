import 'package:habit_tracker_app/src/core/use_cases/use_cases.dart';
import 'package:habit_tracker_app/src/features/habit_tracker/domain/repositories/habit_repository.dart';
import 'package:habit_tracker_app/src/features/habit_tracker/domain/entities/habit.dart';

class AddHabit implements UseCase<void, Habit> {
  final HabitRepository repository;

  AddHabit(this.repository);

  @override
  Future<void> call(Habit habit) async {
    await repository.addHabit(habit);
  }
}
