//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_dien_tich_lien_ket_san_xuat.g.dart';

/// KpiDienTichLienKetSanXuat
///
/// Properties:
/// * [maNhanVien3C] 
/// * [tenNhanVien3C] 
/// * [maMuaVu] 
/// * [tenMuaVu] 
/// * [nam] 
/// * [maCayTrong] 
/// * [tenCayTrong] 
/// * [keHoach] 
/// * [thucTe] 
/// * [hienHanh] 
@BuiltValue()
abstract class KpiDienTichLienKetSanXuat implements Built<KpiDienTichLienKetSanXuat, KpiDienTichLienKetSanXuatBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'tenNhanVien3C')
  String? get tenNhanVien3C;

  @BuiltValueField(wireName: r'maMuaVu')
  String? get maMuaVu;

  @BuiltValueField(wireName: r'tenMuaVu')
  String? get tenMuaVu;

  @BuiltValueField(wireName: r'nam')
  int? get nam;

  @BuiltValueField(wireName: r'maCayTrong')
  String? get maCayTrong;

  @BuiltValueField(wireName: r'tenCayTrong')
  String? get tenCayTrong;

  @BuiltValueField(wireName: r'keHoach')
  double? get keHoach;

  @BuiltValueField(wireName: r'thucTe')
  double? get thucTe;

  @BuiltValueField(wireName: r'hienHanh')
  bool? get hienHanh;

  KpiDienTichLienKetSanXuat._();

  factory KpiDienTichLienKetSanXuat([void updates(KpiDienTichLienKetSanXuatBuilder b)]) = _$KpiDienTichLienKetSanXuat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDienTichLienKetSanXuatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDienTichLienKetSanXuat> get serializer => _$KpiDienTichLienKetSanXuatSerializer();
}

class _$KpiDienTichLienKetSanXuatSerializer implements PrimitiveSerializer<KpiDienTichLienKetSanXuat> {
  @override
  final Iterable<Type> types = const [KpiDienTichLienKetSanXuat, _$KpiDienTichLienKetSanXuat];

  @override
  final String wireName = r'KpiDienTichLienKetSanXuat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDienTichLienKetSanXuat object, {
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
    if (object.nam != null) {
      yield r'nam';
      yield serializers.serialize(
        object.nam,
        specifiedType: const FullType(int),
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
    if (object.hienHanh != null) {
      yield r'hienHanh';
      yield serializers.serialize(
        object.hienHanh,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KpiDienTichLienKetSanXuat object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDienTichLienKetSanXuatBuilder result,
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
        case r'nam':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nam = valueDes;
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
        case r'hienHanh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hienHanh = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KpiDienTichLienKetSanXuat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDienTichLienKetSanXuatBuilder();
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

