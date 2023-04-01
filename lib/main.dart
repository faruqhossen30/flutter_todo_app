import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tod_app/view/screens/todo_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "welcome",
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }


}
