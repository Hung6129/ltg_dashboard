//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_doanh_so_quet_app.g.dart';

/// KpiDoanhSoQuetApp
///
/// Properties:
/// * [maNhanVien3C] 
/// * [tenNhanVien3C] 
/// * [ngay] 
/// * [keHoach] 
/// * [thucTe] 
@BuiltValue()
abstract class KpiDoanhSoQuetApp implements Built<KpiDoanhSoQuetApp, KpiDoanhSoQuetAppBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'tenNhanVien3C')
  String? get tenNhanVien3C;

  @BuiltValueField(wireName: r'ngay')
  DateTime? get ngay;

  @BuiltValueField(wireName: r'keHoach')
  int? get keHoach;

  @BuiltValueField(wireName: r'thucTe')
  int? get thucTe;

  KpiDoanhSoQuetApp._();

  factory KpiDoanhSoQuetApp([void updates(KpiDoanhSoQuetAppBuilder b)]) = _$KpiDoanhSoQuetApp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDoanhSoQuetAppBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDoanhSoQuetApp> get serializer => _$KpiDoanhSoQuetAppSerializer();
}

class _$KpiDoanhSoQuetAppSerializer implements PrimitiveSerializer<KpiDoanhSoQuetApp> {
  @override
  final Iterable<Type> types = const [KpiDoanhSoQuetApp, _$KpiDoanhSoQuetApp];

  @override
  final String wireName = r'KpiDoanhSoQuetApp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDoanhSoQuetApp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maNhanVien3C != null) {
      yield r'maNhanVien3C';
      yield serializers.serialize(
        object.maNhanVien3C,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tenNhanVien3C != null) {
      yield r'tenNhanVien3C';
      yield serializers.serialize(
        object.tenNhanVien3C,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ngay != null) {
      yield r'ngay';
      yield serializers.serialize(
        object.ngay,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.keHoach != null) {
      yield r'keHoach';
      yield serializers.serialize(
        object.keHoach,
        specifiedType: const FullType(int),
      );
    }
    if (object.thucTe != null) {
      yield r'thucTe';
      yield serializers.serialize(
        object.thucTe,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KpiDoanhSoQuetApp object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDoanhSoQuetAppBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maNhanVien3C':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maNhanVien3C = valueDes;
          break;
        case r'tenNhanVien3C':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenNhanVien3C = valueDes;
          break;
        case r'ngay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.ngay = valueDes;
          break;
        case r'keHoach':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.keHoach = valueDes;
          break;
        case r'thucTe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.thucTe = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KpiDoanhSoQuetApp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDoanhSoQuetAppBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

