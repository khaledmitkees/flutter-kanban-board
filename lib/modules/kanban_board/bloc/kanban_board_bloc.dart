import 'package:flutter_kanban_board/modules/kanban_board/repos/kanban_repos.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_kanban_board/modules/kanban_board/models/board_model.dart';
import '../models/mock_model.dart';
import '../models/task.dart';
import 'kanban_board_event.dart';
import 'kanban_board_state.dart';

class KanbanBloc extends Bloc<KanbanEvent, KanbanState> {
  late MockBoardsData mockBoards;
  late KanbanRepo repo;

  late List<Board> _boards;
  // final BoardsService boardsService = BoardsService(); For firestore backend

  KanbanBloc(this.mockBoards, this.repo) : super(KanbanState.initial()) {
    _boards = mockBoards.getBoards();
    on<KanbanEvent>((event, emit) async {
      final currentState = state.copyWith();
      emit(const KanbanState(status: Status.loading));
      event.when(getBoards: () async {
        emit(
          currentState.copyWith(boards: _boards, status: Status.loaded),
        );
      }, addBoard: (title) {
        final updatedBoards = currentState.boards;
        updatedBoards.add(Board(
          title: title,
          children: List.of([]),
        ));
        emit(
          currentState.copyWith(
            boards: updatedBoards,
            status: Status.loaded,
          ),
        );
      }, deleteTask: (column, task) {
        final updatedColumns = currentState.boards;
        updatedColumns[column].children.remove(task);
        emit(
          currentState.copyWith(
            boards: updatedColumns,
            status: Status.loaded,
          ),
        );
      }, reorderTask: (column, from, to) {
        if (from != to) {
          final updatedColumns = currentState.boards;
          final task = _boards[column].children[from];
          updatedColumns[column].children.remove(task);
          updatedColumns[column].children.insert(to, task);
          emit(
            currentState.copyWith(
              boards: updatedColumns,
              status: Status.loaded,
            ),
          );
        }
      }, moveTask: (data, column) {
        final updatedColumns = currentState.boards;
        updatedColumns[data.from].children.remove(data.task);
        updatedColumns[column].children.add(data.task);
        emit(
          currentState.copyWith(
            boards: updatedColumns,
            status: Status.loaded,
          ),
        );
      }, addTask: (column, title) {
        final updatedColumns = currentState.copyWith().boards;
        updatedColumns[column].children.add(Task(title: title));
        final newState = state.copyWith(
            boards: List.of(updatedColumns), status: Status.loaded);
        emit(newState);
      }, exportTask: (column, task) {
        repo.exportToCSV(task);
        emit(state.copyWith(boards: _boards, status: Status.loaded));
      }, editTask: (title, column, childIndex) {
        final updatedColumns = currentState.copyWith().boards;
        final task =
            updatedColumns[column].children[childIndex].copyWith(title: title);
        updatedColumns[column].children[childIndex] = task;
        final newState = state.copyWith(
            boards: List.of(updatedColumns), status: Status.loaded);
        emit(newState);
      }, markAsCompleted: (column, task) {
        final updatedColumns = currentState.boards;
        updatedColumns[column].children.remove(task);
        repo.saveTaskToLocalStorage(task);
        emit(
          currentState.copyWith(
            boards: updatedColumns,
            status: Status.loaded,
          ),
        );
      });
    });
  }
}
