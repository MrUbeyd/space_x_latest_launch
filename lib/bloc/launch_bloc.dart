import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:space_x_latest_launch/core/api/api_repository.dart';
import 'package:space_x_latest_launch/models/launches.dart';

part 'launch_event.dart';
part 'launch_state.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  LaunchBloc() : super(LaunchInitial()) {
    final ApiRepository apiRepository = ApiRepository();

    on<LaunchEvent>((event, emit) async {
      if (event is GetLauchList || event is PullToRefreshEvent) {
        try {
          emit(LaunchLoading());
          final launchList = await apiRepository.getAllLaunches();
          emit(LaunchLoaded(launchList));
          if (launchList.launches == []) {
            emit(const LaunchError("Launch list is empty."));
          }
        } on NetworkError {
          emit(const LaunchError("Failed to fetch data."));
        }
      } else {}
    });
  }
}
