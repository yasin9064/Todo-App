import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String title;
  final bool isDone;
  final ValueChanged<bool?>? onChanged;
  final VoidCallback onDelete;

  const TodoItem({
    super.key,
    required this.title,
    required this.isDone,
    this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          value: isDone,
          onChanged: onChanged,
          activeColor: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                decoration: isDone ? TextDecoration.lineThrough : null,
                color: isDone ? Colors.grey : null,
              ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
