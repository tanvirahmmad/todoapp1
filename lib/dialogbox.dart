import 'package:flutter/material.dart';
import 'package:todoapp1/mybutton.dart';
class diaLogbox extends StatelessWidget {
  final Controller;
  VoidCallback onsave;
  VoidCallback oncancel;
  diaLogbox({super.key,required this.Controller,required this.oncancel,required this.onsave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow.shade300,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: Controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: "Add a new task"),
            ),
Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    mybutton(text: "Save", onPressed: onsave),
    const SizedBox(width: 8),
    mybutton(text: "Cancel", onPressed: oncancel),
  ],
)
          ],
        ),
      ),
    );
  }
}
