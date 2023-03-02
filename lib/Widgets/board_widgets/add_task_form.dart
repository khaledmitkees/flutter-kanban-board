import 'package:flutter/material.dart';
import '../buttons/custom_button.dart';

class AddTaskForm extends StatefulWidget {
  final Function addTaskHandler;
  const AddTaskForm({super.key, required this.addTaskHandler});

  @override
  _AddTaskFormState createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets.add(const EdgeInsets.all(20)),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Task',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black54,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15.0),
              child: TextFormField(
                autofocus: true,
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Task Title',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
            ),
            CustomRoundedButton(
              text: 'Save',
              onPressed: () {
                if (_textController.text.isNotEmpty) {
                  Navigator.of(context).pop();
                  widget.addTaskHandler(_textController.text.trim());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
