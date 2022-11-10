// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x_latest_launch/bloc/launch_bloc.dart';
import 'package:space_x_latest_launch/core/base_manager.dart';
import 'package:space_x_latest_launch/models/last_launch_model.dart';
import 'package:space_x_latest_launch/models/launch_model.dart';
import 'package:space_x_latest_launch/models/launches.dart';
import 'package:space_x_latest_launch/widgets/latest_launch_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LaunchBloc _launchBloc = LaunchBloc();

  @override
  void initState() {
    _launchBloc.add(GetLauchList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        //* Color should change with darker color
        //? Maybe you can use theme configration
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(
          BaseManager.baseTitle,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: _buildLaunchList(),
    );
  }

  Widget _buildLaunchList() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => _launchBloc,
        child: BlocListener<LaunchBloc, LaunchState>(
          listener: (context, state) {
            if (state is LaunchError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage!),
                ),
              );
            }
          },
          child: BlocBuilder<LaunchBloc, LaunchState>(
            builder: (context, state) {
              if (state is LaunchInitial) {
                return _buildLoading();
              } else if (state is LaunchLoading) {
                return _buildLoading();
              } else if (state is LaunchLoaded) {
                return RefreshIndicator(
                  onRefresh: () async {
                    //* Delay for to see progress
                    // await Future.delayed(const Duration(seconds: 2));
                    context.read<LaunchBloc>().add(PullToRefreshEvent());
                  },
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildCard(context, state.launchesList);
                    },
                  ),
                );
              } else if (state is LaunchError) {
                return Text(state.errorMessage!);
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  Widget _buildCard(BuildContext context, LaunchesList model) {
    if (model.launches != [] && model.launches != null) {
      LastLaunchModel? lastLaunch = _findNonNullRecord(model.launches!);
      return lastLaunch != null
          ? Center(
              child: LatestLaunchCardComponent(
                lastLaunch: lastLaunch,
              ),
            )
          : const Center(child: Text("error"));
    } else {
      return Container();
    }
  }
}

//* Function for find last nonNull record
LastLaunchModel? _findNonNullRecord(List<LaunchModel> list) {
  final reversedList = list.reversed;
  for (var launchModel in reversedList) {
    if (launchModel.dateUtc != null && launchModel.details != null && launchModel.name != null && launchModel.links?.patch?.small != null) {
      return LastLaunchModel(
          dateUtc: launchModel.dateUtc,
          details: launchModel.details,
          name: launchModel.name,
          patchSmall: launchModel.links?.patch?.small,
          patchLarge: launchModel.links?.patch?.large);
    }
  }
  return null;
}
