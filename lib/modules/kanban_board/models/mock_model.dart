import 'package:flutter_kanban_board/modules/kanban_board/models/board_model.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/task.dart';

class MockBoardsData {
  List<Board> getBoards() {
    return List.from([
      Board(
        title: 'To Do',
        children: [
          Task(title: 'ToDo 1'),
          Task(title: 'ToDo 2'),
        ],
      ),
      Board(
        title: 'In Progress',
        children: [
          Task(title: 'In progress 3'),
        ],
      ),
      Board(
        title: 'Done',
        children: [
          Task(title: 'Done 4'),
          Task(title: 'Done 5'),
        ],
      ),
    ]);
  }
}
