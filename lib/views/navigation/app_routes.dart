import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui.dart';
import '../home.dart';
import '../home_page.dart';
import '../profile_page.dart';
import '../terms_page.dart';

part 'app_routes.g.dart';

final RouterConfig<Object> appRouter = GoRouter(
  routes: $appRoutes,
  redirect: (BuildContext c, GoRouterState s) {
    return null;
  },
  debugLogDiagnostics: true,
);

/// Home Page
@TypedGoRoute<HomePageRoute>(
  path: '/',
  routes: [
    TypedGoRoute<ProfilePageRoute>(
      path: 'profile/:id',
    )
  ],
)
@immutable
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return const MovieHomePage();
  }
}

@immutable
class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    print(id);
    return const ProfilePage();
  }
}

@TypedGoRoute<TermsPageRoute>(
  path: '/terms',
)
@immutable
class TermsPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return const TermsPage();
  }
}
