import 'dart:io';
import 'TaskManager.dart';

void main() {
  TaskManager tm = TaskManager();

  print("--- Welcome to Task Manager ---");

  do {
    print("\nChoose an option:");
    print("1. Add Task");
    print("2. Read All Tasks");
    print("3. Find Task by ID");
    print("4. Update Task by ID");
    print("5. Delete Task by ID");
    print("6. Exit");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        print("=" * 30);
        print("Enter task description:");
        String? task = stdin.readLineSync();

        if (task != null && task.isNotEmpty) {
          tm.addTask(task);
        } else {
          print("Invalid task description.");
        }

        print("=" * 30);

        break;

      case "2":
        print("=" * 30);
        tm.readAllTasks();
        print("=" * 30);
        break;

      case "3":
        print("=" * 30);
        print("Enter task ID to find: ");
        String? idStr = stdin.readLineSync();
        int? id = int.tryParse(idStr ?? "");

        if (id != null) {
          tm.findTask(id);
        } else {
          print("Invalid ID.");
        }

        print("=" * 30);
        break;

      case "4":
        print("=" * 30);

        print("Enter task ID to update: ");
        String? idStr = stdin.readLineSync();
        int? id = int.tryParse(idStr ?? "");

        if (id != null) {
          print("Enter new task description:");
          String? newTask = stdin.readLineSync();

          if (newTask != null && newTask.isNotEmpty) {
            tm.updateTask(id, newTask);
          } else {
            print("Invalid task description.");
          }
        } else {
          print("Invalid ID.");
        }

        print("=" * 30);

        break;

      case "5":
        print("=" * 30);

        print("Enter task ID to delete: ");
        String? idStr = stdin.readLineSync();
        int? id = int.tryParse(idStr ?? "");

        if (id != null) {
          tm.deleteTask(id);
        } else {
          print("Invalid ID.");
        }

        print("=" * 30);

        break;

      case "6":
        print("Exiting Task Manager. Goodbye!");
        return;

      default:
        print("=" * 30);
        print("Invalid choice. Please try again.");
        print("=" * 30);

        continue;
    }
  } while (true);
}
