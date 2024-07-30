//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:ltg_api/src/model/chart_data_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chart_data.g.dart';

/// ChartData
///
/// Properties:
/// * [chartType] 
/// * [chartTitle] 
/// * [dataItems] 
@BuiltValue()
abstract class ChartData implements Built<ChartData, ChartDataBuilder> {
  @BuiltValueField(wireName: r'chartType')
  String? get chartType;

  @BuiltValueField(wireName: r'chartTitle')
  String? get chartTitle;

  @BuiltValueField(wireName: r'dataItems')
  BuiltList<ChartDataItem>? get dataItems;

  ChartData._();

  factory ChartData([void updates(ChartDataBuilder b)]) = _$ChartData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChartDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChartData> get serializer => _$ChartDataSerializer();
}

class _$ChartDataSerializer implements PrimitiveSerializer<ChartData> {
  @override
  final Iterable<Type> types = const [ChartData, _$ChartData];

  @override
  final String wireName = r'ChartData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChartData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chartType != null) {
      yield r'chartType';
      yield serializers.serialize(
        object.chartType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.chartTitle != null) {
      yield r'chartTitle';
      yield serializers.serialize(
        object.chartTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dataItems != null) {
      yield r'dataItems';
      yield serializers.serialize(
        object.dataItems,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ChartDataItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChartData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChartDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chartType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chartType = valueDes;
          break;
        case r'chartTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chartTitle = valueDes;
          break;
        case r'dataItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ChartDataItem)]),
          ) as BuiltList<ChartDataItem>?;
          if (valueDes == null) continue;
          result.dataItems.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChartData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChartDataBuilder();
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

