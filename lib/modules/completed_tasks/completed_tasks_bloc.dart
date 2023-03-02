import 'package:flutter_kanban_board/modules/kanban_board/models/task.dart';
import 'completed_tasks_repo.dart';

abstract class CompletedTasksEvents {
  Future<List<Task>> getCompletedTasks();
}

class CompletedTasksBloc implements CompletedTasksEvents {
  late CompletedTasksRepo completedTasksRepo;
  CompletedTasksBloc(this.completedTasksRepo);
  @override
  Future<List<Task>> getCompletedTasks() async {
    return await completedTasksRepo.getCompletedTasks();
  }
}
