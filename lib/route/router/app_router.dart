import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppRouterPathAndData{
  //pages
  static const AppPage01 = "/";
  static const AppPage02Specific = "/AppPage02Specific";
  static const AppPage03 = "/AppPage03";

  ///page
  String page;

  ///data
  //for AppPage02Specific
  int tab;

  AppRouterPathAndData(this.page, {this.tab = 0});
}

class  AppWholeRoutState with ChangeNotifier{



}

abstract class AppRoutebase {
  //小写 得兼容浏览器地址
  String get pageRouteName;


}




class AppRouterInformationParser extends RouteInformationParser<AppRouterPathAndData> {
  @override
  Future<AppRouterPathAndData> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);

    if(uri.path == "/"){
      return AppRouterPathAndData(AppRouterPathAndData.AppPage01);
    }else if(uri.path == AppRouterPathAndData.AppPage02Specific.toLowerCase()){
      return AppRouterPathAndData(AppRouterPathAndData.AppPage02Specific);
    }else if(uri.path == AppRouterPathAndData.AppPage03.toLowerCase()){
      return AppRouterPathAndData(AppRouterPathAndData.AppPage03);
    }else {
      return AppRouterPathAndData("异常");
    }
  }

  @override
  RouteInformation? restoreRouteInformation(AppRouterPathAndData path) {
    switch(path.page){
      case AppRouterPathAndData.AppPage01 : {
        return RouteInformation(location: '/');
      }
      case AppRouterPathAndData.AppPage02Specific : {
        return RouteInformation(location: AppRouterPathAndData.AppPage02Specific.toLowerCase());
      }
      case AppRouterPathAndData.AppPage03 : {
        return RouteInformation(location: AppRouterPathAndData.AppPage03.toLowerCase());
      }
      default:
    }
  }
}

class AppRouterDelegate extends RouterDelegate<AppRouterPathAndData>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouterPathAndData> {
  final GlobalKey<NavigatorState> navigatorKey;

  late AppRouterPathAndData _appRouterPathAndData;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(AppRouterPathAndData pathAndData) async {
    _appRouterPathAndData = pathAndData;
    print("here");
  }

  AppRouterPathAndData get currentConfiguration {
    return _appRouterPathAndData;
  }

  //暂时只有page 改变 
  changePageAndData(AppRouterPathAndData info){
    _appRouterPathAndData = info;
    notifyListeners();
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
