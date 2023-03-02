import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/task.dart';
import '../models/task_data.dart';

part 'kanban_board_event.freezed.dart';

@freezed
@immutable
class KanbanEvent with _$KanbanEvent {
  const factory KanbanEvent.getBoards() = GetBoards;
  const factory KanbanEvent.addBoard(String title) = AddCard;
  const factory KanbanEvent.deleteTask(int column, Task task) = DeleteTask;
  const factory KanbanEvent.markAsCompleted(int column, Task task) =
      MarkAsCompleted;
  const factory KanbanEvent.exportTask(int column, Task task) = ExportTask;
  const factory KanbanEvent.reorderTask(int column, int from, int to) =
      ReorderTask;
  const factory KanbanEvent.moveTask(TaskData data, int column) = MoveTask;
  const factory KanbanEvent.addTask(int column, String title) = AddTask;
  const factory KanbanEvent.editTask(String title, int column, int childIndex) =
      EditTask;
}
