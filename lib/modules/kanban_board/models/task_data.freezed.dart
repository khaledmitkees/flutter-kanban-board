// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskData {
  int get from => throw _privateConstructorUsedError;
  Task get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDataCopyWith<TaskData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDataCopyWith<$Res> {
  factory $TaskDataCopyWith(TaskData value, $Res Function(TaskData) then) =
      _$TaskDataCopyWithImpl<$Res, TaskData>;
  @useResult
  $Res call({int from, Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskDataCopyWithImpl<$Res, $Val extends TaskData>
    implements $TaskDataCopyWith<$Res> {
  _$TaskDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskDataCopyWith<$Res> implements $TaskDataCopyWith<$Res> {
  factory _$$_TaskDataCopyWith(
          _$_TaskData value, $Res Function(_$_TaskData) then) =
      __$$_TaskDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int from, Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskDataCopyWithImpl<$Res>
    extends _$TaskDataCopyWithImpl<$Res, _$_TaskData>
    implements _$$_TaskDataCopyWith<$Res> {
  __$$_TaskDataCopyWithImpl(
      _$_TaskData _value, $Res Function(_$_TaskData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? task = null,
  }) {
    return _then(_$_TaskData(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_TaskData implements _TaskData {
  const _$_TaskData({required this.from, required this.task});

  @override
  final int from;
  @override
  final Task task;

  @override
  String toString() {
    return 'TaskData(from: $from, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskData &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskDataCopyWith<_$_TaskData> get copyWith =>
      __$$_TaskDataCopyWithImpl<_$_TaskData>(this, _$identity);
}

abstract class _TaskData implements TaskData {
  const factory _TaskData({required final int from, required final Task task}) =
      _$_TaskData;

  @override
  int get from;
  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDataCopyWith<_$_TaskData> get copyWith =>
      throw _privateConstructorUsedError;
}
