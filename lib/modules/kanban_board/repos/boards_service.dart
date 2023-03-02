import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../firebase_config_helpers/firebase_firestore_helper.dart';
import '../models/board_model.dart';

class BoardsService extends FirestoreHelper {
  final _boardsKey = "boards";

  Future<List<Board>> getBoards() async {
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await getCollection(_boardsKey);
    if (snapshot.size == 0) {
      return [];
    }
    return snapshot.docs.map((doc) => Board.fromFirestore(doc)).toList();
  }

  Future<Board> getBoard(String boardId) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await getDocument('$_boardsKey/$boardId');
    return Board.fromFirestore(snapshot);
  }
}
