import 'package:flutter/material.dart';
import 'package:space_x_latest_launch/core/base_manager.dart';
import 'package:space_x_latest_launch/models/last_launch_model.dart';
import 'package:space_x_latest_launch/widgets/detail_info_widget.dart';
import 'package:space_x_latest_launch/widgets/patch_image_widget.dart';

import 'info_widget.dart';

class LatestLaunchCardComponent extends StatelessWidget {
  LatestLaunchCardComponent({
    Key? key,
    required this.lastLaunch,
  }) : super(key: key);
  LastLaunchModel lastLaunch;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            PatchImageComponent(imgUrl: lastLaunch.patchSmall ?? ""),
            const SizedBox(
              height: 16.0,
            ),
            InfoComponent(
              infoTitle: "Name",
              info: lastLaunch.name.toString(),
            ),
            const SizedBox(
              height: 16.0,
            ),
            DetailInfoComponent(
              infoTitle: "Details",
              info: lastLaunch.details.toString(),
            ),
            const SizedBox(
              height: 16.0,
            ),
            InfoComponent(
              infoTitle: "Date",
              info: BaseManager.formatDate(lastLaunch.dateUtc),
            ),
          ],
        ),
      ),
    );
  }
}
