class ToDoItem {
  String task;
  bool completed = false;

  ToDoItem(this.task);

  void toggleComplete() {
    completed = !completed;
  }
}
