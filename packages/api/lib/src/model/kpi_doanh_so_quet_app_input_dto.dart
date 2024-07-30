//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_doanh_so_quet_app_input_dto.g.dart';

/// KpiDoanhSoQuetAppInputDto
///
/// Properties:
/// * [maNhanVien3C] 
/// * [laToTruong3C] 
@BuiltValue()
abstract class KpiDoanhSoQuetAppInputDto implements Built<KpiDoanhSoQuetAppInputDto, KpiDoanhSoQuetAppInputDtoBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'laToTruong3C')
  bool? get laToTruong3C;

  KpiDoanhSoQuetAppInputDto._();

  factory KpiDoanhSoQuetAppInputDto([void updates(KpiDoanhSoQuetAppInputDtoBuilder b)]) = _$KpiDoanhSoQuetAppInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDoanhSoQuetAppInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDoanhSoQuetAppInputDto> get serializer => _$KpiDoanhSoQuetAppInputDtoSerializer();
}

class _$KpiDoanhSoQuetAppInputDtoSerializer implements PrimitiveSerializer<KpiDoanhSoQuetAppInputDto> {
  @override
  final Iterable<Type> types = const [KpiDoanhSoQuetAppInputDto, _$KpiDoanhSoQuetAppInputDto];

  @override
  final String wireName = r'KpiDoanhSoQuetAppInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDoanhSoQuetAppInputDto object, {
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
    KpiDoanhSoQuetAppInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDoanhSoQuetAppInputDtoBuilder result,
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
  KpiDoanhSoQuetAppInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDoanhSoQuetAppInputDtoBuilder();
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

