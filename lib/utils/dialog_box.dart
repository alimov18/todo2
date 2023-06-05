import 'package:app2/utils/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigoAccent,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              children: [
                //save button
                MyButton(text: "Save", onPressed: () {})
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
