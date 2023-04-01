import 'package:get/get.dart';
import 'package:getx_tod_app/model/todo_model.dart';

class TodoController extends GetxController{

  RxList<Todo> todos =[
    Todo(id:1, title:'Learn dart', isDone:false),
    Todo(id:2, title:'Learn oop', isDone:false),
    Todo(id:2, title:'Learn flutter', isDone:false),
    Todo(id:2, title:'Learn ui', isDone:false),
  ].obs;

  void removeItem(int index) {
    todos.removeAt(index);
  }


}