// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/pages/widgets/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancled;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancled,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFFFFFBE6),
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              style: TextStyle(
                color: Colors.black,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Color(0xFFFFFBE6),
              ),
              cursorColor: Color(0xFFF678A5),
              decoration: InputDecoration(
                hintText: "Add a new Task",
                prefixIcon: Icon(
                  Icons.text_fields_rounded,
                  color: Color(0xFFEAD5DC),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF6ABB6), width: 2.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                  text: "Save",
                  color: Color(0xFFFEEAE6),
                  onPressed: onSave,
                ),
                MyButton(
                  text: "Cancle",
                  color: Colors.red.withOpacity(0.6),
                  onPressed: onCancled,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
