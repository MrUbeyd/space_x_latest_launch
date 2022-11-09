import 'package:flutter/material.dart';
import 'package:space_x_latest_launch/core/service_locator.dart';
import 'package:space_x_latest_launch/views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    ),
  );
}
