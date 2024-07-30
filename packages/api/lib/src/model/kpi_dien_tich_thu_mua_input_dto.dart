//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_dien_tich_thu_mua_input_dto.g.dart';

/// KpiDienTichThuMuaInputDto
///
/// Properties:
/// * [maNhanVien3C] 
/// * [laToTruong3C] 
@BuiltValue()
abstract class KpiDienTichThuMuaInputDto implements Built<KpiDienTichThuMuaInputDto, KpiDienTichThuMuaInputDtoBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'laToTruong3C')
  bool? get laToTruong3C;

  KpiDienTichThuMuaInputDto._();

  factory KpiDienTichThuMuaInputDto([void updates(KpiDienTichThuMuaInputDtoBuilder b)]) = _$KpiDienTichThuMuaInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDienTichThuMuaInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDienTichThuMuaInputDto> get serializer => _$KpiDienTichThuMuaInputDtoSerializer();
}

class _$KpiDienTichThuMuaInputDtoSerializer implements PrimitiveSerializer<KpiDienTichThuMuaInputDto> {
  @override
  final Iterable<Type> types = const [KpiDienTichThuMuaInputDto, _$KpiDienTichThuMuaInputDto];

  @override
  final String wireName = r'KpiDienTichThuMuaInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDienTichThuMuaInputDto object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    KpiDienTichThuMuaInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDienTichThuMuaInputDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KpiDienTichThuMuaInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDienTichThuMuaInputDtoBuilder();
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

