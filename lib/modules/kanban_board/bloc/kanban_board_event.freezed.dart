// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanban_board_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KanbanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbanEventCopyWith<$Res> {
  factory $KanbanEventCopyWith(
          KanbanEvent value, $Res Function(KanbanEvent) then) =
      _$KanbanEventCopyWithImpl<$Res, KanbanEvent>;
}

/// @nodoc
class _$KanbanEventCopyWithImpl<$Res, $Val extends KanbanEvent>
    implements $KanbanEventCopyWith<$Res> {
  _$KanbanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBoardsCopyWith<$Res> {
  factory _$$GetBoardsCopyWith(
          _$GetBoards value, $Res Function(_$GetBoards) then) =
      __$$GetBoardsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBoardsCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$GetBoards>
    implements _$$GetBoardsCopyWith<$Res> {
  __$$GetBoardsCopyWithImpl(
      _$GetBoards _value, $Res Function(_$GetBoards) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBoards implements GetBoards {
  const _$GetBoards();

  @override
  String toString() {
    return 'KanbanEvent.getBoards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBoards);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return getBoards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return getBoards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (getBoards != null) {
      return getBoards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return getBoards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return getBoards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (getBoards != null) {
      return getBoards(this);
    }
    return orElse();
  }
}

abstract class GetBoards implements KanbanEvent {
  const factory GetBoards() = _$GetBoards;
}

/// @nodoc
abstract class _$$AddCardCopyWith<$Res> {
  factory _$$AddCardCopyWith(_$AddCard value, $Res Function(_$AddCard) then) =
      __$$AddCardCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$AddCardCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$AddCard>
    implements _$$AddCardCopyWith<$Res> {
  __$$AddCardCopyWithImpl(_$AddCard _value, $Res Function(_$AddCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$AddCard(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCard implements AddCard {
  const _$AddCard(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'KanbanEvent.addBoard(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCard &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardCopyWith<_$AddCard> get copyWith =>
      __$$AddCardCopyWithImpl<_$AddCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return addBoard(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return addBoard?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (addBoard != null) {
      return addBoard(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return addBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return addBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (addBoard != null) {
      return addBoard(this);
    }
    return orElse();
  }
}

abstract class AddCard implements KanbanEvent {
  const factory AddCard(final String title) = _$AddCard;

  String get title;
  @JsonKey(ignore: true)
  _$$AddCardCopyWith<_$AddCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskCopyWith<$Res> {
  factory _$$DeleteTaskCopyWith(
          _$DeleteTask value, $Res Function(_$DeleteTask) then) =
      __$$DeleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$DeleteTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$DeleteTask>
    implements _$$DeleteTaskCopyWith<$Res> {
  __$$DeleteTaskCopyWithImpl(
      _$DeleteTask _value, $Res Function(_$DeleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? task = null,
  }) {
    return _then(_$DeleteTask(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$DeleteTask implements DeleteTask {
  const _$DeleteTask(this.column, this.task);

  @override
  final int column;
  @override
  final Task task;

  @override
  String toString() {
    return 'KanbanEvent.deleteTask(column: $column, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTask &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskCopyWith<_$DeleteTask> get copyWith =>
      __$$DeleteTaskCopyWithImpl<_$DeleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return deleteTask(column, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return deleteTask?.call(column, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(column, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTask implements KanbanEvent {
  const factory DeleteTask(final int column, final Task task) = _$DeleteTask;

  int get column;
  Task get task;
  @JsonKey(ignore: true)
  _$$DeleteTaskCopyWith<_$DeleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsCompletedCopyWith<$Res> {
  factory _$$MarkAsCompletedCopyWith(
          _$MarkAsCompleted value, $Res Function(_$MarkAsCompleted) then) =
      __$$MarkAsCompletedCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$MarkAsCompletedCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$MarkAsCompleted>
    implements _$$MarkAsCompletedCopyWith<$Res> {
  __$$MarkAsCompletedCopyWithImpl(
      _$MarkAsCompleted _value, $Res Function(_$MarkAsCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? task = null,
  }) {
    return _then(_$MarkAsCompleted(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$MarkAsCompleted implements MarkAsCompleted {
  const _$MarkAsCompleted(this.column, this.task);

  @override
  final int column;
  @override
  final Task task;

  @override
  String toString() {
    return 'KanbanEvent.markAsCompleted(column: $column, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsCompleted &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsCompletedCopyWith<_$MarkAsCompleted> get copyWith =>
      __$$MarkAsCompletedCopyWithImpl<_$MarkAsCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return markAsCompleted(column, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return markAsCompleted?.call(column, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (markAsCompleted != null) {
      return markAsCompleted(column, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return markAsCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return markAsCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (markAsCompleted != null) {
      return markAsCompleted(this);
    }
    return orElse();
  }
}

abstract class MarkAsCompleted implements KanbanEvent {
  const factory MarkAsCompleted(final int column, final Task task) =
      _$MarkAsCompleted;

  int get column;
  Task get task;
  @JsonKey(ignore: true)
  _$$MarkAsCompletedCopyWith<_$MarkAsCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportTaskCopyWith<$Res> {
  factory _$$ExportTaskCopyWith(
          _$ExportTask value, $Res Function(_$ExportTask) then) =
      __$$ExportTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$ExportTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$ExportTask>
    implements _$$ExportTaskCopyWith<$Res> {
  __$$ExportTaskCopyWithImpl(
      _$ExportTask _value, $Res Function(_$ExportTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? task = null,
  }) {
    return _then(_$ExportTask(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$ExportTask implements ExportTask {
  const _$ExportTask(this.column, this.task);

  @override
  final int column;
  @override
  final Task task;

  @override
  String toString() {
    return 'KanbanEvent.exportTask(column: $column, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportTask &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportTaskCopyWith<_$ExportTask> get copyWith =>
      __$$ExportTaskCopyWithImpl<_$ExportTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return exportTask(column, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return exportTask?.call(column, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (exportTask != null) {
      return exportTask(column, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return exportTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return exportTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (exportTask != null) {
      return exportTask(this);
    }
    return orElse();
  }
}

abstract class ExportTask implements KanbanEvent {
  const factory ExportTask(final int column, final Task task) = _$ExportTask;

  int get column;
  Task get task;
  @JsonKey(ignore: true)
  _$$ExportTaskCopyWith<_$ExportTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderTaskCopyWith<$Res> {
  factory _$$ReorderTaskCopyWith(
          _$ReorderTask value, $Res Function(_$ReorderTask) then) =
      __$$ReorderTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, int from, int to});
}

/// @nodoc
class __$$ReorderTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$ReorderTask>
    implements _$$ReorderTaskCopyWith<$Res> {
  __$$ReorderTaskCopyWithImpl(
      _$ReorderTask _value, $Res Function(_$ReorderTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$ReorderTask(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReorderTask implements ReorderTask {
  const _$ReorderTask(this.column, this.from, this.to);

  @override
  final int column;
  @override
  final int from;
  @override
  final int to;

  @override
  String toString() {
    return 'KanbanEvent.reorderTask(column: $column, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderTask &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderTaskCopyWith<_$ReorderTask> get copyWith =>
      __$$ReorderTaskCopyWithImpl<_$ReorderTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return reorderTask(column, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return reorderTask?.call(column, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (reorderTask != null) {
      return reorderTask(column, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return reorderTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return reorderTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (reorderTask != null) {
      return reorderTask(this);
    }
    return orElse();
  }
}

abstract class ReorderTask implements KanbanEvent {
  const factory ReorderTask(final int column, final int from, final int to) =
      _$ReorderTask;

  int get column;
  int get from;
  int get to;
  @JsonKey(ignore: true)
  _$$ReorderTaskCopyWith<_$ReorderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoveTaskCopyWith<$Res> {
  factory _$$MoveTaskCopyWith(
          _$MoveTask value, $Res Function(_$MoveTask) then) =
      __$$MoveTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskData data, int column});

  $TaskDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MoveTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$MoveTask>
    implements _$$MoveTaskCopyWith<$Res> {
  __$$MoveTaskCopyWithImpl(_$MoveTask _value, $Res Function(_$MoveTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? column = null,
  }) {
    return _then(_$MoveTask(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TaskData,
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskDataCopyWith<$Res> get data {
    return $TaskDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$MoveTask implements MoveTask {
  const _$MoveTask(this.data, this.column);

  @override
  final TaskData data;
  @override
  final int column;

  @override
  String toString() {
    return 'KanbanEvent.moveTask(data: $data, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveTask &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, column);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveTaskCopyWith<_$MoveTask> get copyWith =>
      __$$MoveTaskCopyWithImpl<_$MoveTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return moveTask(data, column);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return moveTask?.call(data, column);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (moveTask != null) {
      return moveTask(data, column);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return moveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return moveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (moveTask != null) {
      return moveTask(this);
    }
    return orElse();
  }
}

abstract class MoveTask implements KanbanEvent {
  const factory MoveTask(final TaskData data, final int column) = _$MoveTask;

  TaskData get data;
  int get column;
  @JsonKey(ignore: true)
  _$$MoveTaskCopyWith<_$MoveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskCopyWith<$Res> {
  factory _$$AddTaskCopyWith(_$AddTask value, $Res Function(_$AddTask) then) =
      __$$AddTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int column, String title});
}

/// @nodoc
class __$$AddTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$AddTask>
    implements _$$AddTaskCopyWith<$Res> {
  __$$AddTaskCopyWithImpl(_$AddTask _value, $Res Function(_$AddTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
    Object? title = null,
  }) {
    return _then(_$AddTask(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTask implements AddTask {
  const _$AddTask(this.column, this.title);

  @override
  final int column;
  @override
  final String title;

  @override
  String toString() {
    return 'KanbanEvent.addTask(column: $column, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTask &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskCopyWith<_$AddTask> get copyWith =>
      __$$AddTaskCopyWithImpl<_$AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return addTask(column, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return addTask?.call(column, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(column, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTask implements KanbanEvent {
  const factory AddTask(final int column, final String title) = _$AddTask;

  int get column;
  String get title;
  @JsonKey(ignore: true)
  _$$AddTaskCopyWith<_$AddTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskCopyWith<$Res> {
  factory _$$EditTaskCopyWith(
          _$EditTask value, $Res Function(_$EditTask) then) =
      __$$EditTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, int column, int childIndex});
}

/// @nodoc
class __$$EditTaskCopyWithImpl<$Res>
    extends _$KanbanEventCopyWithImpl<$Res, _$EditTask>
    implements _$$EditTaskCopyWith<$Res> {
  __$$EditTaskCopyWithImpl(_$EditTask _value, $Res Function(_$EditTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? column = null,
    Object? childIndex = null,
  }) {
    return _then(_$EditTask(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      null == childIndex
          ? _value.childIndex
          : childIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditTask implements EditTask {
  const _$EditTask(this.title, this.column, this.childIndex);

  @override
  final String title;
  @override
  final int column;
  @override
  final int childIndex;

  @override
  String toString() {
    return 'KanbanEvent.editTask(title: $title, column: $column, childIndex: $childIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTask &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.childIndex, childIndex) ||
                other.childIndex == childIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, column, childIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskCopyWith<_$EditTask> get copyWith =>
      __$$EditTaskCopyWithImpl<_$EditTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBoards,
    required TResult Function(String title) addBoard,
    required TResult Function(int column, Task task) deleteTask,
    required TResult Function(int column, Task task) markAsCompleted,
    required TResult Function(int column, Task task) exportTask,
    required TResult Function(int column, int from, int to) reorderTask,
    required TResult Function(TaskData data, int column) moveTask,
    required TResult Function(int column, String title) addTask,
    required TResult Function(String title, int column, int childIndex)
        editTask,
  }) {
    return editTask(title, column, childIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBoards,
    TResult? Function(String title)? addBoard,
    TResult? Function(int column, Task task)? deleteTask,
    TResult? Function(int column, Task task)? markAsCompleted,
    TResult? Function(int column, Task task)? exportTask,
    TResult? Function(int column, int from, int to)? reorderTask,
    TResult? Function(TaskData data, int column)? moveTask,
    TResult? Function(int column, String title)? addTask,
    TResult? Function(String title, int column, int childIndex)? editTask,
  }) {
    return editTask?.call(title, column, childIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBoards,
    TResult Function(String title)? addBoard,
    TResult Function(int column, Task task)? deleteTask,
    TResult Function(int column, Task task)? markAsCompleted,
    TResult Function(int column, Task task)? exportTask,
    TResult Function(int column, int from, int to)? reorderTask,
    TResult Function(TaskData data, int column)? moveTask,
    TResult Function(int column, String title)? addTask,
    TResult Function(String title, int column, int childIndex)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(title, column, childIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBoards value) getBoards,
    required TResult Function(AddCard value) addBoard,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(MarkAsCompleted value) markAsCompleted,
    required TResult Function(ExportTask value) exportTask,
    required TResult Function(ReorderTask value) reorderTask,
    required TResult Function(MoveTask value) moveTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(EditTask value) editTask,
  }) {
    return editTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBoards value)? getBoards,
    TResult? Function(AddCard value)? addBoard,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(MarkAsCompleted value)? markAsCompleted,
    TResult? Function(ExportTask value)? exportTask,
    TResult? Function(ReorderTask value)? reorderTask,
    TResult? Function(MoveTask value)? moveTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(EditTask value)? editTask,
  }) {
    return editTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBoards value)? getBoards,
    TResult Function(AddCard value)? addBoard,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(MarkAsCompleted value)? markAsCompleted,
    TResult Function(ExportTask value)? exportTask,
    TResult Function(ReorderTask value)? reorderTask,
    TResult Function(MoveTask value)? moveTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(EditTask value)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(this);
    }
    return orElse();
  }
}

abstract class EditTask implements KanbanEvent {
  const factory EditTask(
      final String title, final int column, final int childIndex) = _$EditTask;

  String get title;
  int get column;
  int get childIndex;
  @JsonKey(ignore: true)
  _$$EditTaskCopyWith<_$EditTask> get copyWith =>
      throw _privateConstructorUsedError;
}
