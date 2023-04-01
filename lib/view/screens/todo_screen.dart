import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tod_app/controller/todo_controller.dart';
import 'package:getx_tod_app/view/screens/create_todo.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({Key? key}) : super(key: key);

  final TodoController c = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todo App'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Get.to(CreateTodo());
                },
                child: Icon(Icons.add_circle_outline))
          ],
        ),
        body: Obx(() =>
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: c.todos.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      '${index + 1} ${c.todos[index].title}', style:TextStyle(decoration:c.todos[index].isDone ? TextDecoration.lineThrough : null),),
                    trailing: TextButton(
                      onPressed: () {
                        // c.todos[index].isDone = !c.todos[index].isDone;
                        c.todos.removeAt(index);
                      },
                      child: Icon(Icons.delete),
                    ),
                    leading: TextButton(
                      onPressed: () {
                        // c.todos.removeAt(index);
                        c.todos[index].isDone = c.todos[index].isDone=true;
                      },
                      child: Icon(Icons.list),
                    ),
                  );
                })));
  }
}


