import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/board_card.dart';

class AddColumnButton extends StatelessWidget {
  final Function addColumnAction;

  const AddColumnButton({super.key, required this.addColumnAction});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: BoardCard(
        child: ListTile(
          onTap: () => addColumnAction(),
          leading: const Icon(Icons.add),
          title: const Text("Add Column"),
        ),
      ),
    );
  }
}
