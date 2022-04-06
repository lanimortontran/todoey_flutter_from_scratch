class Task {
  String name;
  bool completed = false;

  Task(this.name);

  void toggleComplete() {
    completed = !completed;
  }
}
