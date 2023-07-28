import 'package:go_router/go_router.dart';

import '../../ui.dart';

extension NavigationUtil on BuildContext {
  GoRouter get goRouter => GoRouter.of(this);

  /// Returns `true` if there is more than 1 page on the stack.
  bool canPop() => goRouter.canPop();

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  void pop() => goRouter.pop();
}
