//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kpi_doanh_thu_vat_tu_nong_nghiep_input_dto.g.dart';

/// KpiDoanhThuVatTuNongNghiepInputDto
///
/// Properties:
/// * [maNhanVien3C] 
/// * [laToTruong3C] 
@BuiltValue()
abstract class KpiDoanhThuVatTuNongNghiepInputDto implements Built<KpiDoanhThuVatTuNongNghiepInputDto, KpiDoanhThuVatTuNongNghiepInputDtoBuilder> {
  @BuiltValueField(wireName: r'maNhanVien3C')
  String? get maNhanVien3C;

  @BuiltValueField(wireName: r'laToTruong3C')
  bool? get laToTruong3C;

  KpiDoanhThuVatTuNongNghiepInputDto._();

  factory KpiDoanhThuVatTuNongNghiepInputDto([void updates(KpiDoanhThuVatTuNongNghiepInputDtoBuilder b)]) = _$KpiDoanhThuVatTuNongNghiepInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KpiDoanhThuVatTuNongNghiepInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KpiDoanhThuVatTuNongNghiepInputDto> get serializer => _$KpiDoanhThuVatTuNongNghiepInputDtoSerializer();
}

class _$KpiDoanhThuVatTuNongNghiepInputDtoSerializer implements PrimitiveSerializer<KpiDoanhThuVatTuNongNghiepInputDto> {
  @override
  final Iterable<Type> types = const [KpiDoanhThuVatTuNongNghiepInputDto, _$KpiDoanhThuVatTuNongNghiepInputDto];

  @override
  final String wireName = r'KpiDoanhThuVatTuNongNghiepInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KpiDoanhThuVatTuNongNghiepInputDto object, {
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
    KpiDoanhThuVatTuNongNghiepInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KpiDoanhThuVatTuNongNghiepInputDtoBuilder result,
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
  KpiDoanhThuVatTuNongNghiepInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KpiDoanhThuVatTuNongNghiepInputDtoBuilder();
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

