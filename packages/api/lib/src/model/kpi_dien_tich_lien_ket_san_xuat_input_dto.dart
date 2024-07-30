//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_dien_tich_lien_ket_san_xuat_input_dto.g.dart';

/// KpiDienTichLienKetSanXuatInputDto
///
/// Properties:
/// * [maNhanVien3C] 
/// * [laToTruong3C] 
/// * [soMuaVu] 
@BuiltValue()
abstract class KpiDienTichLienKetSanXuatInputDto implements Built<KpiDienTichLienKetSanXuatInputDto, KpiDienTichLienKetSanXuatInputDtoBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'laToTruong3C')
  bool? get laToTruong3C;

  @BuiltValueField(wireName: r'soMuaVu')
  int? get soMuaVu;

  KpiDienTichLienKetSanXuatInputDto._();

  factory KpiDienTichLienKetSanXuatInputDto([void updates(KpiDienTichLienKetSanXuatInputDtoBuilder b)]) = _$KpiDienTichLienKetSanXuatInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDienTichLienKetSanXuatInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDienTichLienKetSanXuatInputDto> get serializer => _$KpiDienTichLienKetSanXuatInputDtoSerializer();
}

class _$KpiDienTichLienKetSanXuatInputDtoSerializer implements PrimitiveSerializer<KpiDienTichLienKetSanXuatInputDto> {
  @override
  final Iterable<Type> types = const [KpiDienTichLienKetSanXuatInputDto, _$KpiDienTichLienKetSanXuatInputDto];

  @override
  final String wireName = r'KpiDienTichLienKetSanXuatInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDienTichLienKetSanXuatInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maNhanVien3C != null) {
      yield r'maNhanVien3C';
      yield serializers.serialize(
        object.maNhanVien3C,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.laToTruong3C != null) {
      yield r'laToTruong3C';
      yield serializers.serialize(
        object.laToTruong3C,
        specifiedType: const FullType(bool),
      );
    }
    if (object.soMuaVu != null) {
      yield r'soMuaVu';
      yield serializers.serialize(
        object.soMuaVu,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KpiDienTichLienKetSanXuatInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDienTichLienKetSanXuatInputDtoBuilder result,
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
        case r'laToTruong3C':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.laToTruong3C = valueDes;
          break;
        case r'soMuaVu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.soMuaVu = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KpiDienTichLienKetSanXuatInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDienTichLienKetSanXuatInputDtoBuilder();
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

