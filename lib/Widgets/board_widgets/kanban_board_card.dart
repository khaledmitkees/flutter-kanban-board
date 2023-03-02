import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/board_card.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/task_card.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/board_model.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/task_data.dart';

class KanbanBoardCard extends StatelessWidget {
  final Board boards;
  final int index;
  final Function dragHandler;
  final Function reorderHandler;
  final Function addTaskHandler;
  final Function editTaskHandler;
  final Function(DragUpdateDetails) dragListener;
  final Function deleteItemHandler;
  final Function markAsCompletedHandler;
  final Function exportItem;

  const KanbanBoardCard(
      {super.key,
      required this.boards,
      required this.index,
      required this.dragHandler,
      required this.reorderHandler,
      required this.addTaskHandler,
      required this.editTaskHandler,
      required this.dragListener,
      required this.deleteItemHandler,
      required this.markAsCompletedHandler,
      required this.exportItem});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BoardCard(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTitleColumn(),
                _buildListItemsColumn(),
                _buildButtonNewTask(index),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: DragTarget<TaskData>(
            onWillAccept: (data) {
              return true;
            },
            onLeave: (data) {},
            onAccept: (data) {
              if (data.from == index) {
                return;
              }
              dragHandler(data, index);
            },
            builder: (context, accept, reject) {
              return const SizedBox();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTitleColumn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        boards.title,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildListItemsColumn() {
    return Expanded(
      child: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          if (newIndex < boards.children.length) {
            reorderHandler(oldIndex, newIndex, index);
          }
        },
        children: [
          for (final task in boards.children)
            TaskCard(
              key: ValueKey(task),
              task: task,
              columnIndex: index,
              dragListener: dragListener,
              editTaskHandler: editTaskHandler,
              deleteItemHandler: deleteItemHandler,
              exportItem: exportItem,
              childIndex: boards.children.indexOf(task),
              markAsCompletedHandler: markAsCompletedHandler,
            )
        ],
      ),
    );
  }

  Widget _buildButtonNewTask(int index) {
    return ListTile(
      dense: true,
      onTap: () {
        addTaskHandler(index);
      },
      leading: const Icon(
        Icons.add_circle_outline,
        color: Colors.black45,
        size: 24.0,
      ),
      title: const Text(
        'Add Task',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black45,
        ),
      ),
    );
  }
}
