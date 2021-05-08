import 'package:dio/dio.dart';
import 'package:flutter_app_for_dart2_test/common/net/repI.dart';
import 'package:flutter_app_for_dart2_test/common/net/reqI.dart';
import 'package:flutter_app_for_dart2_test/modules/market/beans/blockcc_api_v3_price.dart';

class DioHere {
  DioHere._();

  static Dio _dio = Dio();

  static Future<Repl?> get(Reql req) async{
    final response = await _dio.get(req.getUri(),queryParameters:req.parametersToMap(),);
    return toRepClass(req.getThisType(), response.data);
  }

  static Future<List<Repl?>> getMany(Reql req) async{
    final response = await _dio.get(req.getUri(),queryParameters:req.parametersToMap(),);
    print(response.data);
    return toRepClass(req.getThisType(), response.data,many: true);
  }

  static post() async{

  }

  static toRepClass(Type req,dynamic data,{many:bool}){
    if(req == BlockccApiV3PriceReq){
      if(many){
        return BlockccApiV3PriceRes.fromJsonToMany(data);
      }else{
        return BlockccApiV3PriceRes.fromJsonToOne(data);
      }
    }
  }
}