import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_team_flutter_app/screens/on_boarding_page.dart';

part 'navigation_pages_bloc.freezed.dart';

@freezed
class NavigationPagesEvent with _$NavigationPagesEvent {
  const NavigationPagesEvent._();

  const factory NavigationPagesEvent.toHome() = ToHomeNavigationPagesEvent;

  const factory NavigationPagesEvent.toDetailProject(int id) =
      ToDetailProjectNavigationPagesEvent;

  const factory NavigationPagesEvent.toTaskProject(int id) =
      ToTaskProjectNavigationPagesEvent;

  const factory NavigationPagesEvent.toOnBoarding() =
      ToOnBoardingNavigationPagesEvent;

  const factory NavigationPagesEvent.toLogin() = ToLoginNavigationPagesEvent;
}

@freezed
class NavigationPagesState with _$NavigationPagesState {
  const NavigationPagesState._();

  const factory NavigationPagesState.home() = HomeNavigationPagesState;

  const factory NavigationPagesState.detailProject(int id) =
      DetailProjectNavigationPagesState;

  const factory NavigationPagesState.taskProject(int id) =
      TaskProjectNavigationPagesState;

  const factory NavigationPagesState.login() = LoginNavigationPagesState;

  const factory NavigationPagesState.onBoarding() =
      onBoardingNavigationPagesState;
}

class NavigationPagesBloc
    extends Bloc<NavigationPagesEvent, NavigationPagesState> {
  NavigationPagesBloc() : super(const onBoardingNavigationPagesState());

  @override
  Stream<NavigationPagesState> mapEventToState(NavigationPagesEvent event) =>
      event.when<Stream<NavigationPagesState>>(
        toHome: _toHome,
        toDetailProject: _toDetailProject,
        toTaskProject: _toTaskProject,
        toLogin: _toLogin,
        toOnBoarding: _toOnBoarding,
      );

  Stream<NavigationPagesState> _toHome() async* {
    yield HomeNavigationPagesState();
  }

  Stream<NavigationPagesState> _toOnBoarding() async* {
    yield onBoardingNavigationPagesState();
  }

  Stream<NavigationPagesState> _toLogin() async* {
    yield LoginNavigationPagesState();
  }

  Stream<NavigationPagesState> _toTaskProject(int id) async* {
    log(id.toString());
    yield TaskProjectNavigationPagesState(id);
  }

  Stream<NavigationPagesState> _toDetailProject(int id) async* {
    yield DetailProjectNavigationPagesState(id);
  }
}
