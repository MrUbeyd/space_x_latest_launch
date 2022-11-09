import 'package:flutter/material.dart';
import 'package:space_x_latest_launch/core/base_manager.dart';

class DetailInfoComponent extends StatelessWidget {
  DetailInfoComponent({
    Key? key,
    required this.infoTitle,
    required this.info,
  }) : super(key: key);
  String infoTitle;
  String info;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$infoTitle: ",
          style: BaseManager.titleStyle,
        ),
        SizedBox(
          width: 300,
          child: Text(
            info,
            maxLines: 20,
            style: BaseManager.infoStyle,
          ),
        ),
      ],
    );
  }
}
