import '../models/task_data.dart';
import '../models/task.dart';

abstract class KanbanBoardController {
  void deleteItem(int columnIndex, Task task);
  void exportItem(int columnIndex, Task task);
  void handleReOrder(int oldIndex, int newIndex, int column);
  void dragHandler(TaskData data, int index);
  void addCard(String title);
  void addTask(String title, int column);
  void editTask(String title, int column, int childIndex);
  void markAsCompleted(int columnIndex, Task task);
}
