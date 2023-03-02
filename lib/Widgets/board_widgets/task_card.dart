import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/task_menu.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/task_text.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/task_data.dart';
import 'package:flutter_kanban_board/utils/colors.dart';

import '../../modules/kanban_board/models/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final int columnIndex;
  final Function deleteItemHandler;
  final Function markAsCompletedHandler;
  final Function(DragUpdateDetails) dragListener;
  final Function exportItem;
  final Function editTaskHandler;
  final int childIndex;

  const TaskCard(
      {super.key,
      required this.task,
      required this.columnIndex,
      required this.dragListener,
      required this.deleteItemHandler,
      required this.markAsCompletedHandler,
      required this.exportItem,
      required this.editTaskHandler,
      required this.childIndex});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext _, BoxConstraints constraints) {
        return Container(
          height: 50,
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: _showDraggable(constraints, context),
        );
      },
    );
  }

  Widget _showDraggable(BoxConstraints constraints, BuildContext context) {
    return GestureDetector(
      onTap: () => editTaskHandler(task.title, columnIndex, childIndex),
      child: Draggable<TaskData>(
        onDragUpdate: dragListener,
        feedback: Material(
          color: ColorConstants.BPrimaryColor,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 50,
            width: constraints.maxWidth,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16),
            child: TaskText(
              title: task.title,
            ),
          ),
        ),
        childWhenDragging: Container(color: Colors.black12),
        data: TaskData(from: columnIndex, task: task),
        child: Container(
          color: ColorConstants.BPrimaryColor,
          child: listTaskTile(context),
        ),
      ),
    );
  }

  ListTile listTaskTile(BuildContext context) {
    return ListTile(
        dense: true,
        title: TaskText(
          title: task.title,
        ),
        trailing: InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => TaskMenu(
              exportItem: () => exportItem(columnIndex, task),
              deleteHandler: () => deleteItemHandler(columnIndex, task),
              markAsCompletedHandler: () =>
                  markAsCompletedHandler(columnIndex, task),
            ),
          ),
          child: const Icon(
            color: Colors.white,
            Icons.more_horiz,
          ),
        ));
  }
}
