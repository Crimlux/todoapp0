import 'package:flutter/material.dart';
import 'package:todoapp/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({
    super.key,
   required this.controller,
   required this.onSave,
   required this.onCancel
   });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              hintText: "Add a new task"
              ), 
            ),
            Row(
              children: [
               MyButton(text: "Save", onPressed: onSave),
               const SizedBox(width: 8),
               MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
          ),
        ),
      
    );
  }
}