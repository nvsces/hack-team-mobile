import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hack_team_flutter_app/auth/auth_bloc/auth_bloc.dart';
import 'package:hack_team_flutter_app/injection_container.dart';
import 'package:hack_team_flutter_app/redmine/presentation/login_redmine_page.dart';
import 'package:hack_team_flutter_app/redmine/presentation/pages/detail_project_page.dart';
import 'package:hack_team_flutter_app/redmine/presentation/pages/task_project_page.dart';
import 'package:hack_team_flutter_app/routing/bloc/navigation_pages_bloc.dart';
import 'package:hack_team_flutter_app/screens/home_screen.dart';
import 'package:hack_team_flutter_app/screens/on_boarding_page.dart';

class MainRouterDelegate extends RouterDelegate<String>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<String> {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final pages = <Page>[];

  MainRouterDelegate();

  @override
  Future<void> setNewRoutePath(String configuration) async {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationPagesBloc, NavigationPagesState>(
      key: navigatorKey,
      builder: (context, state) {
        print(state);
        final _pages = [
          state.when(
            home: () => MaterialPage(
              key: ValueKey('home'),
              child: HomeScreen(),
            ),
            detailProject: (int id) => MaterialPage(
              key: ValueKey('detail'),
              child: DetailProjectPage(id: id),
            ),
            taskProject: (id) => MaterialPage(
              key: ValueKey('task'),
              child: TaskProjectPage(
                id: id,
              ),
            ),
            login: () => MaterialPage(
              key: ValueKey('login'),
              child: LoginRedminePage(
                isFailure: false,
              ),
            ),
            onBoarding: () => MaterialPage(
              key: ValueKey('onboarding'),
              child: OnBoardingPage(),
            ),
          ),
        ];
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(logged: () {
              sl<NavigationPagesBloc>().add(ToHomeNavigationPagesEvent());
            }, nonLogged: () {
              sl<NavigationPagesBloc>().add(ToLoginNavigationPagesEvent());
            });
          },
          child: Navigator(
            key: ValueKey('key'),
            pages: _pages,
            onPopPage: (route, result) => route.didPop(result),
          ),
        );
      },
    );
  }
}
