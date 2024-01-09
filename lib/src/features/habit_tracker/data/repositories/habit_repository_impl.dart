import 'package:habit_tracker_app/src/features/habit_tracker/domain/entities/habit.dart';

class HabitModel extends Habit {
  HabitModel({required super.name, required super.completed});

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
