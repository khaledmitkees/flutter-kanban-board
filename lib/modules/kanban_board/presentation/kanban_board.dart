import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/add_card_form.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/add_task_form.dart';
import 'package:flutter_kanban_board/Widgets/board_widgets/edit_task_form.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/board_model.dart';

import '../../../Widgets/board_widgets/add_board_button.dart';
import '../../../Widgets/board_widgets/kanban_board_card.dart';
import 'kanban_board_controller.dart';

class KanbanBoard extends StatefulWidget {
  final KanbanBoardController controller;
  final List<Board> boards;
  const KanbanBoard({
    super.key,
    required this.controller,
    required this.boards,
  });

  @override
  State<KanbanBoard> createState() => _KanbanBoardState();
}

class _KanbanBoardState extends State<KanbanBoard> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(16),
      itemCount: widget.boards.length + 1,
      separatorBuilder: (_, __) => const SizedBox(width: 16),
      itemBuilder: (context, index) {
        if (index == widget.boards.length) {
          return AddColumnButton(
            addColumnAction: _showAddColumn,
          );
        } else {
          return KanbanBoardCard(
            boards: widget.boards[index],
            index: index,
            dragHandler: widget.controller.dragHandler,
            reorderHandler: widget.controller.handleReOrder,
            addTaskHandler: _showAddTask,
            editTaskHandler: _showEditTask,
            dragListener: _dragListener,
            deleteItemHandler: widget.controller.deleteItem,
            markAsCompletedHandler: widget.controller.markAsCompleted,
            exportItem: widget.controller.exportItem,
          );
        }
      },
    );
  }

  void _showAddColumn() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (context) => AddCardForm(
        addColumnHandler: widget.controller.addCard,
      ),
    );
  }

  void _showAddTask(int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (context) => AddTaskForm(
        addTaskHandler: (String title) {
          widget.controller.addTask(title, index);
        },
      ),
    );
  }

  void _showEditTask(String title, int column, int childIndex) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (context) => EditTaskForm(
        editTaskHandler: (String title, int column, int childIndex) {
          widget.controller.editTask(title, column, childIndex);
        },
        title: title,
        column: column,
        childIndex: childIndex,
      ),
    );
  }

  void _dragListener(DragUpdateDetails details) {
    if (details.localPosition.dx > MediaQuery.of(context).size.width - 40) {
      _scrollController.jumpTo(_scrollController.offset + 10);
    } else if (details.localPosition.dx < 20) {
      _scrollController.jumpTo(_scrollController.offset - 10);
    }
  }
}
