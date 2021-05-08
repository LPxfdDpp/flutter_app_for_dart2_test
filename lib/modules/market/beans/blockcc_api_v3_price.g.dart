// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockcc_api_v3_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlockccApiV3PriceReq> _$blockccApiV3PriceReqSerializer =
    new _$BlockccApiV3PriceReqSerializer();
Serializer<BlockccApiV3PriceRes> _$blockccApiV3PriceResSerializer =
    new _$BlockccApiV3PriceResSerializer();

class _$BlockccApiV3PriceReqSerializer
    implements StructuredSerializer<BlockccApiV3PriceReq> {
  @override
  final Iterable<Type> types = const [
    BlockccApiV3PriceReq,
    _$BlockccApiV3PriceReq
  ];
  @override
  final String wireName = 'BlockccApiV3PriceReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BlockccApiV3PriceReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'api_key',
      serializers.serialize(object.apiKey,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BlockccApiV3PriceReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlockccApiV3PriceReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'api_key':
          result.apiKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BlockccApiV3PriceResSerializer
    implements StructuredSerializer<BlockccApiV3PriceRes> {
  @override
  final Iterable<Type> types = const [
    BlockccApiV3PriceRes,
    _$BlockccApiV3PriceRes
  ];
  @override
  final String wireName = 'BlockccApiV3PriceRes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BlockccApiV3PriceRes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      's',
      serializers.serialize(object.s, specifiedType: const FullType(String)),
      'S',
      serializers.serialize(object.S, specifiedType: const FullType(String)),
      'u',
      serializers.serialize(object.u, specifiedType: const FullType(double)),
      'b',
      serializers.serialize(object.b, specifiedType: const FullType(double)),
      'v',
      serializers.serialize(object.v, specifiedType: const FullType(double)),
      'T',
      serializers.serialize(object.T, specifiedType: const FullType(int)),
      'a',
      serializers.serialize(object.a, specifiedType: const FullType(double)),
      'ra',
      serializers.serialize(object.ra, specifiedType: const FullType(double)),
      'rv',
      serializers.serialize(object.rv, specifiedType: const FullType(double)),
      'm',
      serializers.serialize(object.m, specifiedType: const FullType(double)),
      'c',
      serializers.serialize(object.c, specifiedType: const FullType(double)),
      'h',
      serializers.serialize(object.h, specifiedType: const FullType(double)),
      'l',
      serializers.serialize(object.l, specifiedType: const FullType(double)),
      'cw',
      serializers.serialize(object.cw, specifiedType: const FullType(double)),
      'hw',
      serializers.serialize(object.hw, specifiedType: const FullType(double)),
      'lw',
      serializers.serialize(object.lw, specifiedType: const FullType(double)),
      'cm',
      serializers.serialize(object.cm, specifiedType: const FullType(double)),
      'hm',
      serializers.serialize(object.hm, specifiedType: const FullType(double)),
      'lm',
      serializers.serialize(object.lm, specifiedType: const FullType(double)),
      'ha',
      serializers.serialize(object.ha, specifiedType: const FullType(double)),
      'la',
      serializers.serialize(object.la, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  BlockccApiV3PriceRes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlockccApiV3PriceResBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 's':
          result.s = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'S':
          result.S = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'u':
          result.u = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'b':
          result.b = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'v':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'T':
          result.T = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'a':
          result.a = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'ra':
          result.ra = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rv':
          result.rv = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'm':
          result.m = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'c':
          result.c = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'h':
          result.h = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'l':
          result.l = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'cw':
          result.cw = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'hw':
          result.hw = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lw':
          result.lw = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'cm':
          result.cm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'hm':
          result.hm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lm':
          result.lm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'ha':
          result.ha = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'la':
          result.la = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$BlockccApiV3PriceReq extends BlockccApiV3PriceReq {
  @override
  final int? page;
  @override
  final int? size;
  @override
  final String apiKey;

  factory _$BlockccApiV3PriceReq(
          [void Function(BlockccApiV3PriceReqBuilder)? updates]) =>
      (new BlockccApiV3PriceReqBuilder()..update(updates)).build();

  _$BlockccApiV3PriceReq._({this.page, this.size, required this.apiKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiKey, 'BlockccApiV3PriceReq', 'apiKey');
  }

  @override
  BlockccApiV3PriceReq rebuild(
          void Function(BlockccApiV3PriceReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlockccApiV3PriceReqBuilder toBuilder() =>
      new BlockccApiV3PriceReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlockccApiV3PriceReq &&
        page == other.page &&
        size == other.size &&
        apiKey == other.apiKey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, page.hashCode), size.hashCode), apiKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlockccApiV3PriceReq')
          ..add('page', page)
          ..add('size', size)
          ..add('apiKey', apiKey))
        .toString();
  }
}

class BlockccApiV3PriceReqBuilder
    implements Builder<BlockccApiV3PriceReq, BlockccApiV3PriceReqBuilder> {
  _$BlockccApiV3PriceReq? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  BlockccApiV3PriceReqBuilder();

  BlockccApiV3PriceReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _size = $v.size;
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlockccApiV3PriceReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlockccApiV3PriceReq;
  }

  @override
  void update(void Function(BlockccApiV3PriceReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlockccApiV3PriceReq build() {
    final _$result = _$v ??
        new _$BlockccApiV3PriceReq._(
            page: page,
            size: size,
            apiKey: BuiltValueNullFieldError.checkNotNull(
                apiKey, 'BlockccApiV3PriceReq', 'apiKey'));
    replace(_$result);
    return _$result;
  }
}

class _$BlockccApiV3PriceRes extends BlockccApiV3PriceRes {
  @override
  final String s;
  @override
  final String S;
  @override
  final double u;
  @override
  final double b;
  @override
  final double v;
  @override
  final int T;
  @override
  final double a;
  @override
  final double ra;
  @override
  final double rv;
  @override
  final double m;
  @override
  final double c;
  @override
  final double h;
  @override
  final double l;
  @override
  final double cw;
  @override
  final double hw;
  @override
  final double lw;
  @override
  final double cm;
  @override
  final double hm;
  @override
  final double lm;
  @override
  final double ha;
  @override
  final double la;

  factory _$BlockccApiV3PriceRes(
          [void Function(BlockccApiV3PriceResBuilder)? updates]) =>
      (new BlockccApiV3PriceResBuilder()..update(updates)).build();

  _$BlockccApiV3PriceRes._(
      {required this.s,
      required this.S,
      required this.u,
      required this.b,
      required this.v,
      required this.T,
      required this.a,
      required this.ra,
      required this.rv,
      required this.m,
      required this.c,
      required this.h,
      required this.l,
      required this.cw,
      required this.hw,
      required this.lw,
      required this.cm,
      required this.hm,
      required this.lm,
      required this.ha,
      required this.la})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(s, 'BlockccApiV3PriceRes', 's');
    BuiltValueNullFieldError.checkNotNull(S, 'BlockccApiV3PriceRes', 'S');
    BuiltValueNullFieldError.checkNotNull(u, 'BlockccApiV3PriceRes', 'u');
    BuiltValueNullFieldError.checkNotNull(b, 'BlockccApiV3PriceRes', 'b');
    BuiltValueNullFieldError.checkNotNull(v, 'BlockccApiV3PriceRes', 'v');
    BuiltValueNullFieldError.checkNotNull(T, 'BlockccApiV3PriceRes', 'T');
    BuiltValueNullFieldError.checkNotNull(a, 'BlockccApiV3PriceRes', 'a');
    BuiltValueNullFieldError.checkNotNull(ra, 'BlockccApiV3PriceRes', 'ra');
    BuiltValueNullFieldError.checkNotNull(rv, 'BlockccApiV3PriceRes', 'rv');
    BuiltValueNullFieldError.checkNotNull(m, 'BlockccApiV3PriceRes', 'm');
    BuiltValueNullFieldError.checkNotNull(c, 'BlockccApiV3PriceRes', 'c');
    BuiltValueNullFieldError.checkNotNull(h, 'BlockccApiV3PriceRes', 'h');
    BuiltValueNullFieldError.checkNotNull(l, 'BlockccApiV3PriceRes', 'l');
    BuiltValueNullFieldError.checkNotNull(cw, 'BlockccApiV3PriceRes', 'cw');
    BuiltValueNullFieldError.checkNotNull(hw, 'BlockccApiV3PriceRes', 'hw');
    BuiltValueNullFieldError.checkNotNull(lw, 'BlockccApiV3PriceRes', 'lw');
    BuiltValueNullFieldError.checkNotNull(cm, 'BlockccApiV3PriceRes', 'cm');
    BuiltValueNullFieldError.checkNotNull(hm, 'BlockccApiV3PriceRes', 'hm');
    BuiltValueNullFieldError.checkNotNull(lm, 'BlockccApiV3PriceRes', 'lm');
    BuiltValueNullFieldError.checkNotNull(ha, 'BlockccApiV3PriceRes', 'ha');
    BuiltValueNullFieldError.checkNotNull(la, 'BlockccApiV3PriceRes', 'la');
  }

  @override
  BlockccApiV3PriceRes rebuild(
          void Function(BlockccApiV3PriceResBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlockccApiV3PriceResBuilder toBuilder() =>
      new BlockccApiV3PriceResBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlockccApiV3PriceRes &&
        s == other.s &&
        S == other.S &&
        u == other.u &&
        b == other.b &&
        v == other.v &&
        T == other.T &&
        a == other.a &&
        ra == other.ra &&
        rv == other.rv &&
        m == other.m &&
        c == other.c &&
        h == other.h &&
        l == other.l &&
        cw == other.cw &&
        hw == other.hw &&
        lw == other.lw &&
        cm == other.cm &&
        hm == other.hm &&
        lm == other.lm &&
        ha == other.ha &&
        la == other.la;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, s.hashCode), S.hashCode),
                                                                                u.hashCode),
                                                                            b.hashCode),
                                                                        v.hashCode),
                                                                    T.hashCode),
                                                                a.hashCode),
                                                            ra.hashCode),
                                                        rv.hashCode),
                                                    m.hashCode),
                                                c.hashCode),
                                            h.hashCode),
                                        l.hashCode),
                                    cw.hashCode),
                                hw.hashCode),
                            lw.hashCode),
                        cm.hashCode),
                    hm.hashCode),
                lm.hashCode),
            ha.hashCode),
        la.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlockccApiV3PriceRes')
          ..add('s', s)
          ..add('S', S)
          ..add('u', u)
          ..add('b', b)
          ..add('v', v)
          ..add('T', T)
          ..add('a', a)
          ..add('ra', ra)
          ..add('rv', rv)
          ..add('m', m)
          ..add('c', c)
          ..add('h', h)
          ..add('l', l)
          ..add('cw', cw)
          ..add('hw', hw)
          ..add('lw', lw)
          ..add('cm', cm)
          ..add('hm', hm)
          ..add('lm', lm)
          ..add('ha', ha)
          ..add('la', la))
        .toString();
  }
}

class BlockccApiV3PriceResBuilder
    implements Builder<BlockccApiV3PriceRes, BlockccApiV3PriceResBuilder> {
  _$BlockccApiV3PriceRes? _$v;

  String? _s;
  String? get s => _$this._s;
  set s(String? s) => _$this._s = s;

  String? _S;
  String? get S => _$this._S;
  set S(String? S) => _$this._S = S;

  double? _u;
  double? get u => _$this._u;
  set u(double? u) => _$this._u = u;

  double? _b;
  double? get b => _$this._b;
  set b(double? b) => _$this._b = b;

  double? _v;
  double? get v => _$this._v;
  set v(double? v) => _$this._v = v;

  int? _T;
  int? get T => _$this._T;
  set T(int? T) => _$this._T = T;

  double? _a;
  double? get a => _$this._a;
  set a(double? a) => _$this._a = a;

  double? _ra;
  double? get ra => _$this._ra;
  set ra(double? ra) => _$this._ra = ra;

  double? _rv;
  double? get rv => _$this._rv;
  set rv(double? rv) => _$this._rv = rv;

  double? _m;
  double? get m => _$this._m;
  set m(double? m) => _$this._m = m;

  double? _c;
  double? get c => _$this._c;
  set c(double? c) => _$this._c = c;

  double? _h;
  double? get h => _$this._h;
  set h(double? h) => _$this._h = h;

  double? _l;
  double? get l => _$this._l;
  set l(double? l) => _$this._l = l;

  double? _cw;
  double? get cw => _$this._cw;
  set cw(double? cw) => _$this._cw = cw;

  double? _hw;
  double? get hw => _$this._hw;
  set hw(double? hw) => _$this._hw = hw;

  double? _lw;
  double? get lw => _$this._lw;
  set lw(double? lw) => _$this._lw = lw;

  double? _cm;
  double? get cm => _$this._cm;
  set cm(double? cm) => _$this._cm = cm;

  double? _hm;
  double? get hm => _$this._hm;
  set hm(double? hm) => _$this._hm = hm;

  double? _lm;
  double? get lm => _$this._lm;
  set lm(double? lm) => _$this._lm = lm;

  double? _ha;
  double? get ha => _$this._ha;
  set ha(double? ha) => _$this._ha = ha;

  double? _la;
  double? get la => _$this._la;
  set la(double? la) => _$this._la = la;

  BlockccApiV3PriceResBuilder();

  BlockccApiV3PriceResBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s = $v.s;
      _S = $v.S;
      _u = $v.u;
      _b = $v.b;
      _v = $v.v;
      _T = $v.T;
      _a = $v.a;
      _ra = $v.ra;
      _rv = $v.rv;
      _m = $v.m;
      _c = $v.c;
      _h = $v.h;
      _l = $v.l;
      _cw = $v.cw;
      _hw = $v.hw;
      _lw = $v.lw;
      _cm = $v.cm;
      _hm = $v.hm;
      _lm = $v.lm;
      _ha = $v.ha;
      _la = $v.la;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlockccApiV3PriceRes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlockccApiV3PriceRes;
  }

  @override
  void update(void Function(BlockccApiV3PriceResBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlockccApiV3PriceRes build() {
    final _$result = _$v ??
        new _$BlockccApiV3PriceRes._(
            s: BuiltValueNullFieldError.checkNotNull(
                s, 'BlockccApiV3PriceRes', 's'),
            S: BuiltValueNullFieldError.checkNotNull(
                S, 'BlockccApiV3PriceRes', 'S'),
            u: BuiltValueNullFieldError.checkNotNull(
                u, 'BlockccApiV3PriceRes', 'u'),
            b: BuiltValueNullFieldError.checkNotNull(
                b, 'BlockccApiV3PriceRes', 'b'),
            v: BuiltValueNullFieldError.checkNotNull(
                v, 'BlockccApiV3PriceRes', 'v'),
            T: BuiltValueNullFieldError.checkNotNull(
                T, 'BlockccApiV3PriceRes', 'T'),
            a: BuiltValueNullFieldError.checkNotNull(
                a, 'BlockccApiV3PriceRes', 'a'),
            ra: BuiltValueNullFieldError.checkNotNull(
                ra, 'BlockccApiV3PriceRes', 'ra'),
            rv: BuiltValueNullFieldError.checkNotNull(
                rv, 'BlockccApiV3PriceRes', 'rv'),
            m: BuiltValueNullFieldError.checkNotNull(
                m, 'BlockccApiV3PriceRes', 'm'),
            c: BuiltValueNullFieldError.checkNotNull(
                c, 'BlockccApiV3PriceRes', 'c'),
            h: BuiltValueNullFieldError.checkNotNull(
                h, 'BlockccApiV3PriceRes', 'h'),
            l: BuiltValueNullFieldError.checkNotNull(
                l, 'BlockccApiV3PriceRes', 'l'),
            cw: BuiltValueNullFieldError.checkNotNull(cw, 'BlockccApiV3PriceRes', 'cw'),
            hw: BuiltValueNullFieldError.checkNotNull(hw, 'BlockccApiV3PriceRes', 'hw'),
            lw: BuiltValueNullFieldError.checkNotNull(lw, 'BlockccApiV3PriceRes', 'lw'),
            cm: BuiltValueNullFieldError.checkNotNull(cm, 'BlockccApiV3PriceRes', 'cm'),
            hm: BuiltValueNullFieldError.checkNotNull(hm, 'BlockccApiV3PriceRes', 'hm'),
            lm: BuiltValueNullFieldError.checkNotNull(lm, 'BlockccApiV3PriceRes', 'lm'),
            ha: BuiltValueNullFieldError.checkNotNull(ha, 'BlockccApiV3PriceRes', 'ha'),
            la: BuiltValueNullFieldError.checkNotNull(la, 'BlockccApiV3PriceRes', 'la'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
