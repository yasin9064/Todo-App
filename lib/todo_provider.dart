import 'package:flutter/material.dart';

class Todo {
  String title;
  bool isDone;

  Todo({required this.title, this.isDone = false});
}

class TodoProvider with ChangeNotifier {
  final List<Todo> _todos = [];
  final List<Todo> _trash = [];

  List<Todo> get todos => _todos;
  List<Todo> get trash => _trash;

  void addTodo(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void toggleTodoStatus(int index) {
    _todos[index].isDone = !_todos[index].isDone;
    notifyListeners();
  }

  void removeTodoAt(int index) {
    final todo = _todos.removeAt(index);
    _trash.add(todo);
    notifyListeners();
  }

  void restoreTodoAt(int index) {
    final todo = _trash.removeAt(index);
    _todos.add(todo);
    notifyListeners();
  }

  void deleteTodoPermanently(int index) {
    _trash.removeAt(index);
    notifyListeners();
  }
}
