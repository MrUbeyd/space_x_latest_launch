import 'package:get_it/get_it.dart';
import 'package:space_x_latest_launch/core/api/network_manager.dart';
import 'package:space_x_latest_launch/core/base_manager.dart';

GetIt sl = GetIt.instance;

void initServiceLocator() {
  //* Core
  sl.registerSingleton(NetworkManager());
  sl.registerSingleton(BaseManager());
}
