import 'package:space_x_latest_launch/core/api/network_manager.dart';
import 'package:space_x_latest_launch/models/launches.dart';

class ApiProvider {
  Future<LaunchesList> getAllLaunches() async {
    final response = await NetworkManager.baseDio.get('launches');
    if (response.statusCode == 200) {
      return LaunchesList.fromJson(response.data);
    } else {
      throw Exception('Failed load data');
    }
  }
}
