library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_app_for_dart2_test/modules/market/beans/blockcc_api_v3_price.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor([
  BlockccApiV3PriceRes,
  BlockccApiV3PriceReq,
])

///原生的结构人不容易看  模型也不会在里面看到
final Serializers serializers = _$serializers;
///json格式的人容易看
Serializers standardSerializers = (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();