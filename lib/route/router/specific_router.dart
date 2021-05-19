import 'package:flutter/material.dart';
import 'package:flutter_app_for_dart2_test/route/router/app_router.dart';

class SpecificRouterDelegate extends RouterDelegate<AppRouterPathAndData>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouterPathAndData> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(AppRouterPathAndData path) async {
    // This is not required for inner router delegate because it does not
    // parse route
    assert(false);
  }

  int tab = 0;
  changeTab(tab){

  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [

      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        return true;
      },
    );
  }

}