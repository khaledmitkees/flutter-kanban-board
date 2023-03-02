import 'package:flutter/material.dart';

import '../buttons/custom_button.dart';

class AddCardForm extends StatefulWidget {
  final Function addColumnHandler;
  const AddCardForm({super.key, required this.addColumnHandler});

  @override
  _AddCardFormState createState() => _AddCardFormState();
}

class _AddCardFormState extends State<AddCardForm> {
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
              'Add Column',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black54,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25.0),
              child: TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Column Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                controller: _textController,
              ),
            ),
            CustomRoundedButton(
              text: 'Add',
              onPressed: () {
                if (_textController.text.isNotEmpty) {
                  Navigator.of(context).pop();
                  widget.addColumnHandler(_textController.text.trim());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
