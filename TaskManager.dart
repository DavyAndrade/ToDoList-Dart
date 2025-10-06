class TaskManager {
  List<String> tasks = [];

  void addTask(String task) {
    tasks.add(task);
    print('Task added: $task');
  }

  void readAllTasks() {
    if (tasks.isEmpty) {
      print('No tasks available.');
      return;
    }

    print('All Tasks:');

    for (var task in tasks) {
      print('ID: ${tasks.indexOf(task)} — $task');
    }
  }

  void findTask(int id) {
    if (id >= 0 && id < tasks.length) {
      print('Task found: ${tasks[id]}');
    } else {
      print('Task not found at index: $id');
    }
  }

  void updateTask(int id, String newTask) {
    if (id >= 0 && id < tasks.length) {
      String oldTask = tasks[id];
      tasks[id] = newTask;
      print('Task updated: $oldTask to $newTask');
    } else {
      print('Task not found at index: $id');
    }
  }

  void deleteTask(int id) {
    if (id >= 0 && id < tasks.length) {
      String task = tasks[id];
      tasks.removeAt(id);
      print('Task deleted: $task');
    } else {
      print('Task not found at index: $id');
    }
  }
}
