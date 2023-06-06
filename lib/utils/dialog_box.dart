import 'package:flutter/material.dart';
import 'package:app2/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigoAccent,
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Add a new task",
                  hintStyle: const TextStyle(fontFamily: 'Poppins')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),
                const SizedBox(
                  width: 8,
                ),
                MyButton(text: "Cancel", onPressed: onCancel)
                // Shu yerda to'xtatdi
                //cancel button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
