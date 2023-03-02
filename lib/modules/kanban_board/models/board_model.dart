import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'task.dart';

part 'board_model.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Board with _$Board {
  const factory Board({
    required String title,
    required List<Task> children,
  }) = _Board;

  factory Board.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data()!;
    final List<Task> children =
        (data['children'] as List<dynamic>).cast<Task>();
    return Board(
      title: data['title'] ?? '',
      children: children,
    );
  }
}
