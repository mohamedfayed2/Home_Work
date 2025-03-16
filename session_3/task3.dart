import 'dart:io';

void main() {
  List<Task> tasks = [];
  while (true) {
    print("|-------------------------|\n");
    print("1 => Add Task");
    print("2 => Remove Task");
    print("3 => View Tasks");
    print("4 => Edit Task");
    print("5 => Exit");
    print("|-------------------------|\n");
    stdout.write("Choose an option: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Task title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Due date: ");
        String dueDate = stdin.readLineSync()!;
        tasks.add(Task(title, dueDate));
        print("Added");
        break;

      case 2:
        stdout.write("Enter task title to remove: ");
        String title = stdin.readLineSync()!;
        tasks.removeWhere((task) => task.title == title);
        print("Removed");
        break;

      case 3:
        if (tasks.isEmpty) {
          print("Error");
        } else {
          for (var task in tasks) {
            print(
                "- ${task.title} | ${task.dueDate} | ${task.completed ? 'Done' : 'Pending'}");
          }
        }
        break;

      case 4:
        stdout.write("Enter task title to Edit: ");
        String title = stdin.readLineSync()!;
        for (var task in tasks) {
          if (task.title == title) {
            stdout.write("New title (or leave blank): ");
            String newTitle = stdin.readLineSync()!;
            if (newTitle.isNotEmpty) task.title = newTitle;
            stdout.write("New due date (or leave blank): ");
            String newDueDate = stdin.readLineSync()!;
            if (newDueDate.isNotEmpty) task.dueDate = newDueDate;
            stdout.write("Mark as done? (y/n): ");
            task.completed = stdin.readLineSync()!.toLowerCase() == 'y';
            print("Task updated!");
            break;
          }
        }
        break;

      case 5:
        print("Exit");
        return;

      default:
        print("Invalid");
    }
  }
}

class Task {
  String title;
  String dueDate;
  bool completed;

  Task(this.title, this.dueDate, [this.completed = false]);
}
