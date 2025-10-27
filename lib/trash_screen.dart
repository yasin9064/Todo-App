
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo_provider.dart';

class TrashScreen extends StatelessWidget {
  const TrashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trash'),
      ),
      body: ListView.builder(
        itemCount: todoProvider.trash.length,
        itemBuilder: (context, index) {
          final todo = todoProvider.trash[index];
          return ListTile(
            title: Text(
              todo.title,
              style: TextStyle(
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.restore),
                  onPressed: () {
                    todoProvider.restoreTodoAt(index);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete_forever),
                  onPressed: () {
                    todoProvider.deleteTodoPermanently(index);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
