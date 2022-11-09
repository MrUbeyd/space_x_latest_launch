import 'package:space_x_latest_launch/core/service_locator.dart';

mixin BaseManagerMixin {
  BaseManager sessionManager = sl<BaseManager>();
}

class BaseManager {
  //* BaseUrl for Api requests
  static String baseUrl = "https://api.spacexdata.com/v4/";

  //* Base title for default scaffold
  static String baseTitle = "SpaceX Latest Launch";
}
