import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/utils/colors.dart';

class TaskMenu extends StatelessWidget {
  final Function deleteHandler;
  final Function exportItem;
  final Function markAsCompletedHandler;
  const TaskMenu({
    super.key,
    required this.deleteHandler,
    required this.exportItem,
    required this.markAsCompletedHandler,
  });

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.of(context).padding.bottom;
    return IntrinsicHeight(
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 15, bottom: paddingBottom + 15),
        child: Column(children: [
          InkWell(
              child: Text(
                'Mark as completed',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.BPrimaryColor,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                markAsCompletedHandler();
              }),
          Divider(color: Colors.grey),
          InkWell(
              child: Text(
                'Export Task',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.BPrimaryColor,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                exportItem();
              }),
          Divider(color: Colors.grey),
          InkWell(
              child: Text(
                'Delete Task',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                deleteHandler();
              }),
        ]),
      ),
    );
  }
}
