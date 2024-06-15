class Habit {
  final String name;
  final bool completed;

  Habit({required this.name, required this.completed});

  Habit toggle() {
    return Habit(name: name, completed: !completed);
  }
    Habit copyWith({String? name, bool? completed}) {
    return Habit(
      name: name ?? this.name,
      completed: completed ?? this.completed,
    );
  }
}

