import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x_latest_launch/bloc/launch_bloc.dart';
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
      home: BlocProvider<LaunchBloc>(
        create: (context) => LaunchBloc()..add(GetLauchList()),
        child: const HomePage(),
      ),
    ),
  );
}
