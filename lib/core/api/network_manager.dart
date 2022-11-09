import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:space_x_latest_launch/core/base_manager.dart';
import 'package:space_x_latest_launch/core/service_locator.dart';

mixin NetworkManagerMixin {
  NetworkManager networkManager = sl<NetworkManager>();
}

class NetworkManager {
  static BaseManager baseManager = sl<BaseManager>();

  //* SpaceX Client
  static Dio get baseDio {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: BaseManager.baseUrl,
        headers: {
          "content-type": "application/json",
        },
      ),
    );

    if (Platform.isAndroid) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }

    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        logPrint: print,
      ),
    );

    return dio;
  }
}
