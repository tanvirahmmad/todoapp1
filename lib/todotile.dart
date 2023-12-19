import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class todotile extends StatelessWidget {
  final String taskname;
  final bool taskcomplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  todotile(
      {super.key,
      required this.taskname,
      required this.taskcomplete,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    bool ischacked = false;
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(),
            children: [SlidableAction(onPressed: deleteFunction,icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12),)]),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                  value: taskcomplete,
                  activeColor: Colors.black,
                  onChanged: onChanged),
              Text(
                taskname,
                style: TextStyle(
                    decoration: taskcomplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
