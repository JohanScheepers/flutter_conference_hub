import 'package:flutter/material.dart';
import 'package:flutter_conference_hub/app/pages/conference_hub_home_page.dart';
import 'package:flutter_conference_hub/app/pages/pages.dart';
import 'package:go_router/go_router.dart';

import 'app/const/const.dart';

final GoRouter _router = GoRouter(
  errorBuilder: (context, state) => ErrorPage(state.error),
  routes: [
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const ConferenceHubHomePage();
      },
    ),
    GoRoute(
      path: "/login",
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
  ],
);

void main() {
  runApp(const ConferenceHub());
}

class ConferenceHub extends StatelessWidget {
  const ConferenceHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Conference Hub',
      theme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
