import 'package:json_annotation/json_annotation.dart';
import 'package:space_x_latest_launch/models/launch_model.dart';

part 'launches.g.dart';

@JsonSerializable()
class LaunchesList {
  LaunchesList({this.launches});

  final List<LaunchModel>? launches;
  factory LaunchesList.fromJson(List<dynamic> parsedJson) {
    List<LaunchModel>? launches = [];
    launches = parsedJson.map((i) => LaunchModel.fromJson(i)).toList();

    return LaunchesList(launches: launches);
  }
}
