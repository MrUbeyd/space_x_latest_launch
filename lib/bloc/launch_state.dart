part of 'launch_bloc.dart';

abstract class LaunchState extends Equatable {
  const LaunchState();

  @override
  List<Object> get props => [];
}

class LaunchInitial extends LaunchState {}

class LaunchLoading extends LaunchState {}

class LaunchLoaded extends LaunchState {
  final LaunchesList launchesList;
  const LaunchLoaded(this.launchesList);
}

class LaunchError extends LaunchState {
  final String? message;
  const LaunchError(this.message);
}
