import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_team_flutter_app/redmine/domain/model/project_model.dart';
import 'package:hack_team_flutter_app/redmine/domain/repository/redmine_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'project_bloc.freezed.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const ProjectEvent._();

  const factory ProjectEvent.read() = ReadProjectEvent;
}

@freezed
class ProjectState with _$ProjectState {
  const ProjectState._();

  const factory ProjectState.loading() = LoadingProjectState;

  const factory ProjectState.loaded(List<ProjectModel> result) =
      LoadedProjectState;

  const factory ProjectState.failureLogin() = FailureLoginProjectState;
}

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc({
    required this.redmineRepository,
  }) : super(const LoadingProjectState());
  final RedmineRepository redmineRepository;

  @override
  Stream<ProjectState> mapEventToState(ProjectEvent event) =>
      event.when<Stream<ProjectState>>(
        read: _read,
      );

  Stream<ProjectState> _read() async* {
    yield LoadingProjectState();

    final projectOrFailure = await redmineRepository.getAllProjects();
    yield projectOrFailure.fold(
      (l) => FailureLoginProjectState(),
      (r) => LoadedProjectState(r),
    );
  }
}
