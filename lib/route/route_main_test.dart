import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_dart2_test/route/router/app_router.dart';



  main() async{

    runApp(AppGo());

  }





class AppGo extends StatefulWidget {
  const AppGo({Key? key}) : super(key: key);

  @override
  _AppGoState createState() => _AppGoState();
}

class _AppGoState extends State<AppGo> {
  AppRouterDelegate _appRouterDelegate = AppRouterDelegate();
  AppRouterInformationParser _appRouteInformationParser = AppRouterInformationParser();
  BackButtonDispatcher _backButtonDispatcher = RootBackButtonDispatcher()..addCallback(() async => true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _appRouteInformationParser,
        routerDelegate: _appRouterDelegate,
        backButtonDispatcher:_backButtonDispatcher
    );
  }
}
