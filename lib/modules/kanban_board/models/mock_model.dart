import 'package:flutter_kanban_board/modules/kanban_board/models/board_model.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/task.dart';

class MockBoardsData {
  List<Board> getBoards() {
    return List.from([
      Board(
        title: 'To Do',
        children: [],
      ),
      // Board(
      //   title: 'In Progress',
      //   children: [],
      // ),
      // Board(
      //   title: 'Done',
      //   children: [],
      // ),
    ]);
  }
}
