import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';
import '../model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final Function onToDoChanged;
  final Function onToDoDeleted;
  const TodoItem(
      {super.key,
      required this.todo,
      required this.onToDoChanged,
      required this.onToDoDeleted});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        title: Text(todo.title!,
            style: TextStyle(
              color: tdBlack,
              fontSize: 16,
              decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
            )),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                onToDoDeleted(todo.id);
              },
              iconSize: 18,
              icon: const Icon(Icons.delete),
            )),
      ),
    );
  }
}
