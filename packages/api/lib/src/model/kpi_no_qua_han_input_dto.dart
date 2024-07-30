//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_no_qua_han_input_dto.g.dart';

/// KpiNoQuaHanInputDto
///
/// Properties:
/// * [maNhanVien3C] 
/// * [laToTruong3C] 
@BuiltValue()
abstract class KpiNoQuaHanInputDto implements Built<KpiNoQuaHanInputDto, KpiNoQuaHanInputDtoBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'laToTruong3C')
  bool? get laToTruong3C;

  KpiNoQuaHanInputDto._();

  factory KpiNoQuaHanInputDto([void updates(KpiNoQuaHanInputDtoBuilder b)]) = _$KpiNoQuaHanInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiNoQuaHanInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiNoQuaHanInputDto> get serializer => _$KpiNoQuaHanInputDtoSerializer();
}

class _$KpiNoQuaHanInputDtoSerializer implements PrimitiveSerializer<KpiNoQuaHanInputDto> {
  @override
  final Iterable<Type> types = const [KpiNoQuaHanInputDto, _$KpiNoQuaHanInputDto];

  @override
  final String wireName = r'KpiNoQuaHanInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiNoQuaHanInputDto object, {
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
    KpiNoQuaHanInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiNoQuaHanInputDtoBuilder result,
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
  KpiNoQuaHanInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiNoQuaHanInputDtoBuilder();
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

