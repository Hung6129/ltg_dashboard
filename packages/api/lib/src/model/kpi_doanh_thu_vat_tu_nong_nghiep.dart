//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_doanh_thu_vat_tu_nong_nghiep.g.dart';

/// KpiDoanhThuVatTuNongNghiep
///
/// Properties:
/// * [maNhanVien3C] 
/// * [tenNhanVien3C] 
/// * [loaiHangHoa] 
/// * [ngay] 
/// * [maCayTrong] 
/// * [tenCayTrong] 
/// * [keHoach] 
/// * [thucTe] 
@BuiltValue()
abstract class KpiDoanhThuVatTuNongNghiep implements Built<KpiDoanhThuVatTuNongNghiep, KpiDoanhThuVatTuNongNghiepBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'tenNhanVien3C')
  String? get tenNhanVien3C;

  @BuiltValueField(wireName: r'loaiHangHoa')
  String? get loaiHangHoa;

  @BuiltValueField(wireName: r'ngay')
  DateTime? get ngay;

  @BuiltValueField(wireName: r'maCayTrong')
  String? get maCayTrong;

  @BuiltValueField(wireName: r'tenCayTrong')
  String? get tenCayTrong;

  @BuiltValueField(wireName: r'keHoach')
  double? get keHoach;

  @BuiltValueField(wireName: r'thucTe')
  double? get thucTe;

  KpiDoanhThuVatTuNongNghiep._();

  factory KpiDoanhThuVatTuNongNghiep([void updates(KpiDoanhThuVatTuNongNghiepBuilder b)]) = _$KpiDoanhThuVatTuNongNghiep;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDoanhThuVatTuNongNghiepBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDoanhThuVatTuNongNghiep> get serializer => _$KpiDoanhThuVatTuNongNghiepSerializer();
}

class _$KpiDoanhThuVatTuNongNghiepSerializer implements PrimitiveSerializer<KpiDoanhThuVatTuNongNghiep> {
  @override
  final Iterable<Type> types = const [KpiDoanhThuVatTuNongNghiep, _$KpiDoanhThuVatTuNongNghiep];

  @override
  final String wireName = r'KpiDoanhThuVatTuNongNghiep';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDoanhThuVatTuNongNghiep object, {
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
    if (object.loaiHangHoa != null) {
      yield r'loaiHangHoa';
      yield serializers.serialize(
        object.loaiHangHoa,
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
    KpiDoanhThuVatTuNongNghiep object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDoanhThuVatTuNongNghiepBuilder result,
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
        case r'loaiHangHoa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loaiHangHoa = valueDes;
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
  KpiDoanhThuVatTuNongNghiep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDoanhThuVatTuNongNghiepBuilder();
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

