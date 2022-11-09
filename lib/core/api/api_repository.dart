import 'package:space_x_latest_launch/core/api/api_provider.dart';
import 'package:space_x_latest_launch/models/launches.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<LaunchesList> getAllLaunches() {
    return _provider.getAllLaunches();
  }
}

class NetworkError extends Error {}
