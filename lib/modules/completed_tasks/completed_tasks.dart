import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/app_strings/app_strings.dart';
import 'package:flutter_kanban_board/utils/progress_indicator.dart';
import 'package:intl/intl.dart';
import '../../utils/colors.dart';
import '../kanban_board/models/task.dart';
import 'completed_tasks_bloc.dart';

class CompletedTasks extends StatelessWidget {
  late CompletedTasksBloc completedTasksBloc;
  late List<Task> historyList;

  CompletedTasks(this.completedTasksBloc);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Task>>(
      future: completedTasksBloc.getCompletedTasks(),
      builder: (BuildContext context, AsyncSnapshot<List<Task>> snapshot) {
        if (snapshot.hasData) {
          return completedTasksList(historyList: snapshot.data ?? []);
        } else {
          return CenteredProgressIndicator();
        }
      },
    );
  }
}

class completedTasksList extends StatelessWidget {
  const completedTasksList({
    super.key,
    required this.historyList,
  });

  final List<Task> historyList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.BPrimaryColor,
          title: const Text(AppStrings.historyScreen),
        ),
        body: historyList.isEmpty
            ? Center(child: Text('List is empty'))
            : ListView.separated(
                padding: const EdgeInsets.all(8),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      title: Text(
                        historyList[index].title,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: Text(historyList[index].endDate ?? ''));
                },
                separatorBuilder: (_, __) => const Divider(),
                itemCount: historyList.length,
              ));
  }
}

extension MyExtension on DateTime {
  String string(String pattern) {
    try {
      return new DateFormat(pattern).format(this);
    } catch (e) {
      return '';
    }
  }
}
