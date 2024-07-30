//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_no_qua_han.g.dart';

/// KpiNoQuaHan
///
/// Properties:
/// * [maNhanVien3C] 
/// * [tenNhanVien3C] 
/// * [maMuaVu] 
/// * [loaiHangHoa] 
/// * [tenMuaVu] 
/// * [maCayTrong] 
/// * [tenCayTrong] 
/// * [doanhThu] 
/// * [no] 
@BuiltValue()
abstract class KpiNoQuaHan implements Built<KpiNoQuaHan, KpiNoQuaHanBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'tenNhanVien3C')
  String? get tenNhanVien3C;

  @BuiltValueField(wireName: r'maMuaVu')
  String? get maMuaVu;

  @BuiltValueField(wireName: r'loaiHangHoa')
  String? get loaiHangHoa;

  @BuiltValueField(wireName: r'tenMuaVu')
  String? get tenMuaVu;

  @BuiltValueField(wireName: r'maCayTrong')
  String? get maCayTrong;

  @BuiltValueField(wireName: r'tenCayTrong')
  String? get tenCayTrong;

  @BuiltValueField(wireName: r'doanhThu')
  double? get doanhThu;

  @BuiltValueField(wireName: r'no')
  double? get no;

  KpiNoQuaHan._();

  factory KpiNoQuaHan([void updates(KpiNoQuaHanBuilder b)]) = _$KpiNoQuaHan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiNoQuaHanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiNoQuaHan> get serializer => _$KpiNoQuaHanSerializer();
}

class _$KpiNoQuaHanSerializer implements PrimitiveSerializer<KpiNoQuaHan> {
  @override
  final Iterable<Type> types = const [KpiNoQuaHan, _$KpiNoQuaHan];

  @override
  final String wireName = r'KpiNoQuaHan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiNoQuaHan object, {
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
    if (object.loaiHangHoa != null) {
      yield r'loaiHangHoa';
      yield serializers.serialize(
        object.loaiHangHoa,
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
    if (object.doanhThu != null) {
      yield r'doanhThu';
      yield serializers.serialize(
        object.doanhThu,
        specifiedType: const FullType(double),
      );
    }
    if (object.no != null) {
      yield r'no';
      yield serializers.serialize(
        object.no,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KpiNoQuaHan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiNoQuaHanBuilder result,
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
        case r'loaiHangHoa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loaiHangHoa = valueDes;
          break;
        case r'tenMuaVu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tenMuaVu = valueDes;
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
        case r'doanhThu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.doanhThu = valueDes;
          break;
        case r'no':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.no = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KpiNoQuaHan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiNoQuaHanBuilder();
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

