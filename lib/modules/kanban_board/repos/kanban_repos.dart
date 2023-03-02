import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter_kanban_board/app_strings/app_strings.dart';
import 'package:flutter_kanban_board/modules/completed_tasks/completed_tasks.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/task.dart';

abstract class CSVExporter {
  Future<bool> exportToCSV(Task task);
}

abstract class LocalStorage {
  Future<bool> saveTaskToLocalStorage(Task task);
}

class KanbanRepo implements CSVExporter, LocalStorage {
  @override
  Future<bool> exportToCSV(Task task) async {
    List<List<dynamic>> rows = [
      ["title"],
      [task.title]
    ];
    if (await Permission.storage.request().isGranted) {
      final Directory directory = await getApplicationDocumentsDirectory();
      String csv = const ListToCsvConverter().convert(rows);
      final File files = File('${directory.path}/${task.title}.csv');
      await files.writeAsString(csv);
      return true;
    } else {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();
    }
    return false;
  }

  @override
  Future<bool> saveTaskToLocalStorage(Task task) async {
    final updatedTask =
        task.copyWith(endDate: DateTime.now().string('dd/MM/yy - kk:mm'));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefsKey = AppStrings.completedTasks;
    bool isExist = prefs.containsKey(prefsKey);
    if (isExist) {
      final myObjectsJson = prefs.getStringList(prefsKey) ?? [];
      final myCompletedTasks =
          myObjectsJson.map((json) => Task.fromJson(jsonDecode(json))).toList();
      myCompletedTasks.add(updatedTask);
      final updatedJson =
          myCompletedTasks.map((Task) => jsonEncode(Task.toJson())).toList();
      return await prefs.setStringList(prefsKey, updatedJson);
    } else {
      List<Task> completedTasks = <Task>[];
      completedTasks.add(updatedTask);
      final myObjectsJson = completedTasks
          .map((Task) => jsonEncode(updatedTask.toJson()))
          .toList();
      return await prefs.setStringList(prefsKey, myObjectsJson);
    }
  }
}
