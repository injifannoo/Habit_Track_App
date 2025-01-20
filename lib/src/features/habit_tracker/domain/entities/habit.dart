class Habit {
  final String name;
  final bool completed;

  Habit({required this.name, required this.completed});

  Habit toggle() {
    return Habit(name: name, completed: !completed);
  }
}
