import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../app_strings/app_strings.dart';
import '../kanban_board/models/task.dart';

abstract class CompletedTasksRepoEvents {
  Future<List<Task>> getCompletedTasks();
}

class CompletedTasksRepo implements CompletedTasksRepoEvents {
  @override
  Future<List<Task>> getCompletedTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefsKey = AppStrings.completedTasks;
    bool isExist = prefs.containsKey(prefsKey);
    if (isExist) {
      final myObjectsJson = prefs.getStringList(prefsKey) ?? [];
      final myCompletedTasks =
          myObjectsJson.map((json) => Task.fromJson(jsonDecode(json))).toList();
      return myCompletedTasks;
    } else {
      return <Task>[];
    }
  }
}
