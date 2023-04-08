import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final void Function()? longPressCallback;

  TaskTile({this.isChecked=false, this.taskTitle='',
    required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
            style: TextStyle(
              decoration: isChecked? TextDecoration.lineThrough:null,
            ),),
      trailing: Checkbox(
    activeColor: Colors.lightBlueAccent,
    value: isChecked,
    onChanged:checkboxCallback,
    ),

    );
  }
}


