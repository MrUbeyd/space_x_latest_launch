part of 'launch_bloc.dart';

abstract class LaunchEvent extends Equatable {
  const LaunchEvent();

  @override
  List<Object> get props => [];
}

class GetLauchList extends LaunchEvent {}

class PullToRefreshEvent extends LaunchEvent {}
