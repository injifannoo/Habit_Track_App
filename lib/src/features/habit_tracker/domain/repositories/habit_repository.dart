abstract class HabitRepository {
  Future<List<Habit>> getHabits();
  Future<void> addHabit(Habit habit);
  Future<void> toggleHabit(int index);
}
