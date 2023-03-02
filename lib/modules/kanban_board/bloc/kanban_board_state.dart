import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/board_model.dart';
part 'kanban_board_state.freezed.dart';

enum Status { loading, loaded }

@Freezed(makeCollectionsUnmodifiable: false)
abstract class KanbanState implements _$KanbanState {
  const factory KanbanState({
    @Default([]) List<Board> boards,
    required Status status,
  }) = _KanbanState;

  factory KanbanState.initial() {
    return const KanbanState(boards: [], status: Status.loading);
  }

  factory KanbanState.loading() {
    return const KanbanState(boards: [], status: Status.loading);
  }

  factory KanbanState.loaded(List<Board> projects) {
    return KanbanState(boards: projects, status: Status.loaded);
  }
}
