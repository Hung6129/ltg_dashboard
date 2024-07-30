//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_dien_tich_thu_mua.g.dart';

/// KpiDienTichThuMua
///
/// Properties:
/// * [maNhanVien3C] 
/// * [tenNhanVien3C] 
/// * [maMuaVu] 
/// * [tenMuaVu] 
/// * [ngay] 
/// * [maCayTrong] 
/// * [tenCayTrong] 
/// * [thucHien] 
/// * [thuMua] 
@BuiltValue()
abstract class KpiDienTichThuMua implements Built<KpiDienTichThuMua, KpiDienTichThuMuaBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'tenNhanVien3C')
  String? get tenNhanVien3C;

  @BuiltValueField(wireName: r'maMuaVu')
  String? get maMuaVu;

  @BuiltValueField(wireName: r'tenMuaVu')
  String? get tenMuaVu;

  @BuiltValueField(wireName: r'ngay')
  DateTime? get ngay;

  @BuiltValueField(wireName: r'maCayTrong')
  String? get maCayTrong;

  @BuiltValueField(wireName: r'tenCayTrong')
  String? get tenCayTrong;

  @BuiltValueField(wireName: r'thucHien')
  double? get thucHien;

  @BuiltValueField(wireName: r'thuMua')
  double? get thuMua;

  KpiDienTichThuMua._();

  factory KpiDienTichThuMua([void updates(KpiDienTichThuMuaBuilder b)]) = _$KpiDienTichThuMua;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDienTichThuMuaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDienTichThuMua> get serializer => _$KpiDienTichThuMuaSerializer();
}

class _$KpiDienTichThuMuaSerializer implements PrimitiveSerializer<KpiDienTichThuMua> {
  @override
  final Iterable<Type> types = const [KpiDienTichThuMua, _$KpiDienTichThuMua];

  @override
  final String wireName = r'KpiDienTichThuMua';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDienTichThuMua object, {
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
    if (object.maMuaVu != null) {
      yield r'maMuaVu';
      yield serializers.serialize(
        object.maMuaVu,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tenMuaVu != null) {
      yield r'tenMuaVu';
      yield serializers.serialize(
        object.tenMuaVu,
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
    if (object.maCayTrong != null) {
      yield r'maCayTrong';
      yield serializers.serialize(
        object.maCayTrong,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tenCayTrong != null) {
      yield r'tenCayTrong';
      yield serializers.serialize(
        object.tenCayTrong,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.thucHien != null) {
      yield r'thucHien';
      yield serializers.serialize(
        object.thucHien,
        specifiedType: const FullType(double),
      );
    }
    if (object.thuMua != null) {
      yield r'thuMua';
      yield serializers.serialize(
        object.thuMua,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KpiDienTichThuMua object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDienTichThuMuaBuilder result,
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
        case r'maMuaVu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maMuaVu = valueDes;
          break;
        case r'tenMuaVu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenMuaVu = valueDes;
          break;
        case r'ngay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.ngay = valueDes;
          break;
        case r'maCayTrong':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.maCayTrong = valueDes;
          break;
        case r'tenCayTrong':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenCayTrong = valueDes;
          break;
        case r'thucHien':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.thucHien = valueDes;
          break;
        case r'thuMua':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.thuMua = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KpiDienTichThuMua deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDienTichThuMuaBuilder();
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

