import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x_latest_launch/bloc/launch_bloc.dart';
import 'package:space_x_latest_launch/core/base_manager.dart';
import 'package:space_x_latest_launch/models/launches.dart';

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
      appBar: AppBar(
        //* Color should change with darker color
        //? Maybe you can use theme configration
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(BaseManager.baseTitle),
      ),
      // body: Center(child: Text(BaseManager.baseUrl)),
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
                  content: Text(state.message!),
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
                return _buildCard(context, state.launchesList);
              } else if (state is LaunchError) {
                return Container(
                  child: Text(state.message!),
                );
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
    return model.launches != []
        ? ListView.builder(
            itemCount: model.launches?.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text("A: ${model.launches?[index].details}"),
                        Text("B: ${model.launches?[index].links?.patch?.large}"),
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
