import 'package:flutter/material.dart';
import 'package:space_x_latest_launch/core/base_manager.dart';

class InfoComponent extends StatelessWidget {
  InfoComponent({
    Key? key,
    required this.infoTitle,
    required this.info,
  }) : super(key: key);
  String infoTitle;
  String info;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$infoTitle: ",
          style: BaseManager.titleStyle,
        ),
        Text(
          info,
          style: BaseManager.infoStyle,
        ),
      ],
    );
  }
}
