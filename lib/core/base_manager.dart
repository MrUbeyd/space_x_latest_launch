import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:space_x_latest_launch/core/service_locator.dart';

mixin BaseManagerMixin {
  BaseManager sessionManager = sl<BaseManager>();
}

class BaseManager {
  //* BaseUrl for Api requests
  static String baseUrl = "https://api.spacexdata.com/v4/";

  //* Base title for default scaffold
  static String baseTitle = "SpaceX Latest Launch";

  //* Function for format date to EN Standarts
  static String formatDate(String? date) {
    if (date == null) {
      return "";
    }
    initializeDateFormatting();
    final parsedDate = DateTime.parse(date);
    final DateFormat formatter = DateFormat('dd MMMM yyyy', "en-EN");
    final String formattedStart = formatter.format(parsedDate);

    return formattedStart;
  }

  static TextStyle titleStyle = const TextStyle(color: Colors.blueGrey, fontSize: 16, fontWeight: FontWeight.bold);
  static TextStyle infoStyle = const TextStyle(fontSize: 14);
}
