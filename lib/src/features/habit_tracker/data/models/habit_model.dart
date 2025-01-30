import 'package:habit_tracker/features/habit_tracker/domain/entities/habit.dart';

class HabitModel extends Habit {
  HabitModel({required String name, required bool completed})
      : super(name: name, completed: completed);

  // Factory constructor to convert JSON to HabitModel
  factory HabitModel.fromJson(Map<String, dynamic> json) {
    return HabitModel(
      name: json['name'],
      completed: json['completed'],
    );
  }

  // Convert HabitModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'completed': completed,
    };
  }
}
