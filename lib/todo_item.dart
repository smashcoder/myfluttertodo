import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem}) : super(key: key);

  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
        child: ToDoTile(),
    );
  }

  ListTile ToDoTile() {
    return ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.teal.shade900,
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.teal.shade100,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 18,
            color: Colors.blueGrey.shade50,
            fontWeight: FontWeight.w400,
            decoration: todo.isDone? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.teal.shade100,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
            color: Colors.black,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id);
            },
          ),
        ),
      );
  }
}
