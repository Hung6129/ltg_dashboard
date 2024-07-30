//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_doanh_so_co_gioi_hoa.g.dart';

/// KpiDoanhSoCoGioiHoa
///
/// Properties:
/// * [maNhanVien3C] 
/// * [tenNhanVien3C] 
/// * [ngay] 
/// * [loaiDichVu] 
/// * [keHoach] 
/// * [thucTe] 
@BuiltValue()
abstract class KpiDoanhSoCoGioiHoa implements Built<KpiDoanhSoCoGioiHoa, KpiDoanhSoCoGioiHoaBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'tenNhanVien3C')
  String? get tenNhanVien3C;

  @BuiltValueField(wireName: r'ngay')
  DateTime? get ngay;

  @BuiltValueField(wireName: r'loaiDichVu')
  String? get loaiDichVu;

  @BuiltValueField(wireName: r'keHoach')
  double? get keHoach;

  @BuiltValueField(wireName: r'thucTe')
  double? get thucTe;

  KpiDoanhSoCoGioiHoa._();

  factory KpiDoanhSoCoGioiHoa([void updates(KpiDoanhSoCoGioiHoaBuilder b)]) = _$KpiDoanhSoCoGioiHoa;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDoanhSoCoGioiHoaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDoanhSoCoGioiHoa> get serializer => _$KpiDoanhSoCoGioiHoaSerializer();
}

class _$KpiDoanhSoCoGioiHoaSerializer implements PrimitiveSerializer<KpiDoanhSoCoGioiHoa> {
  @override
  final Iterable<Type> types = const [KpiDoanhSoCoGioiHoa, _$KpiDoanhSoCoGioiHoa];

  @override
  final String wireName = r'KpiDoanhSoCoGioiHoa';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDoanhSoCoGioiHoa object, {
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
    if (object.loaiDichVu != null) {
      yield r'loaiDichVu';
      yield serializers.serialize(
        object.loaiDichVu,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.keHoach != null) {
      yield r'keHoach';
      yield serializers.serialize(
        object.keHoach,
        specifiedType: const FullType(double),
      );
    }
    if (object.thucTe != null) {
      yield r'thucTe';
      yield serializers.serialize(
        object.thucTe,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KpiDoanhSoCoGioiHoa object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDoanhSoCoGioiHoaBuilder result,
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
        case r'loaiDichVu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loaiDichVu = valueDes;
          break;
        case r'keHoach':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.keHoach = valueDes;
          break;
        case r'thucTe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
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
  KpiDoanhSoCoGioiHoa deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDoanhSoCoGioiHoaBuilder();
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

