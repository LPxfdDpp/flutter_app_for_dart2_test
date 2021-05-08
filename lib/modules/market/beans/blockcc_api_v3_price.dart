import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_for_dart2_test/common/net/repI.dart';
import 'package:flutter_app_for_dart2_test/common/net/reqI.dart';
import 'package:flutter_app_for_dart2_test/common/tools/for_built_value/serializers.dart';
import 'dart:convert' as convert;

part 'blockcc_api_v3_price.g.dart';

///接口文档地址
///https://blockcc.gitee.io/blockcc-api-document/zh_CN/#%E8%8E%B7%E5%8F%96%E5%B8%81%E7%A7%8D%E4%BB%B7%E6%A0%BC
abstract class BlockccApiV3PriceReq implements Built<BlockccApiV3PriceReq, BlockccApiV3PriceReqBuilder>,Reql{
  BlockccApiV3PriceReq._();
  factory BlockccApiV3PriceReq([Function(BlockccApiV3PriceReqBuilder) updates]) = _$BlockccApiV3PriceReq;
  static Serializer<BlockccApiV3PriceReq> get serializer => _$blockccApiV3PriceReqSerializer;

  //启动通过配置自动注入值
  static String uri = "https://data.block.cc/api/v3/price";
  static Type type = BlockccApiV3PriceReq;
  String getUri(){
   return  uri;
  }
  Type getThisType(){
    return  type;
  }
  String parametersToJson(){
    return convert.json.encode(standardSerializers.serializeWith(BlockccApiV3PriceReq.serializer, this));
  }
  Map<String,dynamic> parametersToMap(){
    return convert.json.decode(convert.json.encode(standardSerializers.serializeWith(BlockccApiV3PriceReq.serializer, this)));
  }

  int? get page;
  int? get size;

  @BuiltValueField(wireName: 'api_key')
  String get apiKey;
}
abstract class BlockccApiV3PriceRes implements Built<BlockccApiV3PriceRes, BlockccApiV3PriceResBuilder>,Repl {
  factory BlockccApiV3PriceRes([Function(BlockccApiV3PriceResBuilder) updates]) = _$BlockccApiV3PriceRes;
  BlockccApiV3PriceRes._();

  static Serializer<BlockccApiV3PriceRes> get serializer => _$blockccApiV3PriceResSerializer;

  static BlockccApiV3PriceRes? fromJsonToOne(String jsonString) {
    return standardSerializers.deserializeWith(BlockccApiV3PriceRes.serializer, convert.json.decode(jsonString));
  }

  static List<BlockccApiV3PriceRes?> fromJsonToMany(dynamic jsons) {
    List<BlockccApiV3PriceRes?> returnData = [];
    if(jsons is List){
      for(int i = 0;i<jsons.length;i++){
        // returnData.add(standardSerializers.deserializeWith(BlockccApiV3PriceRes.serializer, "${convert.jsonEncode(jsons[i])}"));
        returnData.add(standardSerializers.deserializeWith(BlockccApiV3PriceRes.serializer, convert.json.decode(convert.jsonEncode(jsons[i]))));
      }
      return returnData;
    }else{
      return returnData..add(standardSerializers.deserializeWith(BlockccApiV3PriceRes.serializer, convert.json.decode(jsons)));
    }
  }

  String toJson(){
    return convert.json.encode(standardSerializers.serializeWith(BlockccApiV3PriceRes.serializer, this));
  }

  /**
      s	币种名称
      S	币种符号
      u	价格(USD)
      b	价格(BTC)
      v	交易量(USD)
      T	时间戳(毫秒)
      a	交易量(单位为当前币种)
      ra	报告交易量(单位为当前币种)
      rv	报告交易量(USD)
      m	市值(USD)
      c	24小时涨跌幅
      h	24小时最高价
      l	24小时最低价
      cw	1周涨跌幅
      hw	1周最高价
      lw	1周最低价
      cm	1月涨跌幅
      hm	1月最高价
      lm	1月最低价
      ha	历史最高价
      la	历史最低价
   */
  String get s;
  String get S;
  double get u;
  double get b;
  double get v;
  int get T;
  double get a;
  double get ra;
  double get rv;
  double get m;
  double get c;
  double get h;
  double get l;
  double get cw;
  double get hw;
  double get lw;
  double get cm;
  double get hm;
  double get lm;
  double get ha;
  double get la;
}