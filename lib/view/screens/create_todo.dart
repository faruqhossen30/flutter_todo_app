import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tod_app/controller/todo_controller.dart';
import 'package:getx_tod_app/model/todo_model.dart';
import 'package:getx_tod_app/view/screens/todo_screen.dart';

class CreateTodo extends StatelessWidget {
  CreateTodo({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  TextEditingController taskController = TextEditingController();

  final TodoController c = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Todo'),),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Task',
                  border: OutlineInputBorder(),
                ),
                controller: taskController,
                validator: (value){
                  if(value?.isEmpty ?? true){
                    return "Please enter text";
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // all correct
                      c.todos.add(Todo(id: 2, title: taskController.text, isDone: false));
                      Get.off(TodoScreen());

                    } else {
                      // error
                    }
                  },
                  child: const Text("Add  New Todo"))
            ],
          ),
        ),
      ),
    );
  }
}
