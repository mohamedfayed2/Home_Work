import 'dart:io';

void main() {
  Manager grocery = Manager();
  String? name, c;
  int? index;

  stdout.write("|-------------------------|\n");
  stdout.write("1 => Add Item");
  stdout.write("2 => Remove Item");
  stdout.write("3 => Display List");
  stdout.write("|-------------------------|");
  stdout.write("Enter your Choose: ");
  c = stdin.readLineSync();
  switch (c) {
    case "1":
      stdout.write("Enter the item name: ");
      name = stdin.readLineSync();
      if (name != null && name.isNotEmpty) {
        grocery.addItem(name);
      } else {
        stdout.write("Invalid item name");
      }
      break;

    case "2":
      stdout.write("Enter the index to remove: ");
      try {
        index = int.parse(stdin.readLineSync()!);
        grocery.removeItem(index);
      } catch (Error) {
        stdout.write("Invalid index");
      }
      break;

    case "3":
      grocery.displayItems();
      break;
  }
}

class Manager {
  List<String> items = [];
  void addItem(String name) {
    if (!items.contains(name)) {
      items.add(name);
      stdout.write("Added: $name");
    } else {
      stdout.write("Error: $name is already in the list.");
    }
  }

  void removeItem(int index) {
    if (index >= 0 && index < items.length) {
      stdout.write("Removed: ${items[index]}");
      items.removeAt(index);
    } else {
      stdout.write("Error: Invalid index.");
    }
  }

  void displayItems() {
    if (items.isEmpty) {
      stdout.write("The list is empty.");
    } else {
      stdout.write("Grocery List:");
      items.forEach(
        (element) => items,
      );
    }
  }
}
