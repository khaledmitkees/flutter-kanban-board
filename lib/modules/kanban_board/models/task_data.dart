import 'package:freezed_annotation/freezed_annotation.dart';

import 'task.dart';

part 'task_data.freezed.dart';

@freezed
class TaskData with _$TaskData {
  const factory TaskData({
    required int from,
    required Task task,
  }) = _TaskData;
}
