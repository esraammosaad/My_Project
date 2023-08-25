import 'package:flutter/material.dart';
import '../../const.dart';
import '../../models/taskconroller.dart';
import '../../models/users_screen.dart';
import 'add_task_screen.dart';
class NewTasks extends StatefulWidget {
  const NewTasks({Key? key}) : super(key: key);

  @override
  State<NewTasks> createState() => _NewTasksState();

}

class _NewTasksState extends State<NewTasks> {
  TaskModel tasks = TaskModel();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('data')


    );
  }
}
