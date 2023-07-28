// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homePageRoute,
      $termsPageRoute,
    ];

GoRoute get $homePageRoute => GoRouteData.$route(
      path: '/',
      factory: $HomePageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'profile/:id',
          factory: $ProfilePageRouteExtension._fromState,
        ),
      ],
    );

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => HomePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ProfilePageRouteExtension on ProfilePageRoute {
  static ProfilePageRoute _fromState(GoRouterState state) => ProfilePageRoute(
        id: int.parse(state.params['id']!),
      );

  String get location => GoRouteData.$location(
        '/profile/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $termsPageRoute => GoRouteData.$route(
      path: '/terms',
      factory: $TermsPageRouteExtension._fromState,
    );

extension $TermsPageRouteExtension on TermsPageRoute {
  static TermsPageRoute _fromState(GoRouterState state) => TermsPageRoute();

  String get location => GoRouteData.$location(
        '/terms',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
