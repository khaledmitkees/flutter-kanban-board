import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kanban_board/app_strings/app_strings.dart';
import 'package:flutter_kanban_board/modules/completed_tasks/completed_tasks_bloc.dart';
import 'package:flutter_kanban_board/utils/colors.dart';

import '../../../utils/progress_indicator.dart';
import '../../completed_tasks/completed_tasks.dart';
import '../../completed_tasks/completed_tasks_repo.dart';
import '../bloc/kanban_board_bloc.dart';
import '../bloc/kanban_board_event.dart';
import '../bloc/kanban_board_state.dart';
import '../models/task.dart';
import '../models/task_data.dart';
import 'kanban_board.dart';
import 'kanban_board_controller.dart';

class KanbanBlocPage extends StatefulWidget {
  const KanbanBlocPage({super.key});

  @override
  _KanbanBoardScreen createState() => _KanbanBoardScreen();
}

class _KanbanBoardScreen extends State<KanbanBlocPage>
    implements KanbanBoardController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.BPrimaryColor,
        title: const Text(AppStrings.appName),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.history,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CompletedTasks(
                        CompletedTasksBloc(CompletedTasksRepo()))),
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<KanbanBloc, KanbanState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.loading:
                return const Center(
                  child: CenteredProgressIndicator(),
                );
              case Status.loaded:
                if (state.boards.isNotEmpty) {
                  return KanbanBoard(
                    controller: this,
                    boards: state.boards,
                  );
                } else {
                  return const SizedBox.shrink();
                }
            }
          },
        ),
      ),
    );
  }

  @override
  void deleteItem(int columnIndex, Task task) {
    context.read<KanbanBloc>().add(KanbanEvent.deleteTask(columnIndex, task));
  }

  @override
  void markAsCompleted(int columnIndex, Task task) {
    context
        .read<KanbanBloc>()
        .add(KanbanEvent.markAsCompleted(columnIndex, task));
  }

  @override
  void handleReOrder(int oldIndex, int newIndex, int column) {
    context
        .read<KanbanBloc>()
        .add(KanbanEvent.reorderTask(column, oldIndex, newIndex));
  }

  @override
  void dragHandler(TaskData data, int index) {
    context.read<KanbanBloc>().add(KanbanEvent.moveTask(data, index));
  }

  @override
  void addCard(String title) {
    context.read<KanbanBloc>().add(KanbanEvent.addBoard(title));
  }

  @override
  void addTask(String title, int column) {
    context.read<KanbanBloc>().add(KanbanEvent.addTask(column, title));
  }

  @override
  void exportItem(int columnIndex, Task task) {
    context.read<KanbanBloc>().add(KanbanEvent.exportTask(columnIndex, task));
  }

  @override
  void editTask(String title, int column, int childIndex) {
    context
        .read<KanbanBloc>()
        .add(KanbanEvent.editTask(title, column, childIndex));
  }
}
