import 'dart:async';
import 'package:flutter_app_for_dart2_test/common/net/dio_here.dart';
import 'package:flutter_app_for_dart2_test/modules/market/beans/blockcc_api_v3_price.dart';
import 'dart:convert' as convert;

void main() {

  var blockccApiV3PriceReqBuilder = BlockccApiV3PriceReqBuilder()..apiKey ="EDDW9FEXLUSTGUJVWXKP1PKGZLBBUPN8LUN9QQTB" ..page = 1;

  var future = DioHere.getMany(blockccApiV3PriceReqBuilder.build());

  future.then((va) {
    print(va);
  });

  // testJson2String();



  Timer(Duration(days: 1), (){});
}


void testJson2String(){
  var user = { "name": "John Smith", "email": "john@example.com"};
  String jsonString = convert.jsonEncode(user);
  String normalString2 = user.toString();
  print('打印对象: $user');
  print('打印toString: $normalString2');
  print('打印JSON: $jsonString');
  var nameList = ["小明","韩梅梅","李华"];
  String normalNameString = nameList.toString();
  String josnNameString = convert.jsonEncode(nameList);
  print(nameList);
  print(normalNameString);
  print(josnNameString);
}

