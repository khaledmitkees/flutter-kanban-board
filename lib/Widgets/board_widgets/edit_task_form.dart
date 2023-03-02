import 'package:flutter/material.dart';
import '../buttons/custom_button.dart';

class EditTaskForm extends StatefulWidget {
  final Function editTaskHandler;
  final String title;
  final int column;
  final int childIndex;
  const EditTaskForm(
      {super.key,
      required this.editTaskHandler,
      required this.title,
      required this.column,
      required this.childIndex});

  @override
  _EditTaskFormState createState() => _EditTaskFormState();
}

class _EditTaskFormState extends State<EditTaskForm> {
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    _textController.text = widget.title;
    super.initState();
  }

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
                  widget.editTaskHandler(_textController.text.trim(),
                      widget.column, widget.childIndex);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
