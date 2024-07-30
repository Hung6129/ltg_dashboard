//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chart_data_item.g.dart';

/// ChartDataItem
///
/// Properties:
/// * [name] 
/// * [xValue] 
/// * [xName] 
/// * [xName1] 
/// * [xName2] 
/// * [xName3] 
/// * [xName4] 
/// * [yValue] 
/// * [yValue1] 
/// * [yValue2] 
/// * [yValue3] 
/// * [yValue4] 
/// * [yValue5] 
/// * [color] 
/// * [size] 
@BuiltValue()
abstract class ChartDataItem implements Built<ChartDataItem, ChartDataItemBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'xValue')
  double? get xValue;

  @BuiltValueField(wireName: r'xName')
  String? get xName;

  @BuiltValueField(wireName: r'xName1')
  String? get xName1;

  @BuiltValueField(wireName: r'xName2')
  String? get xName2;

  @BuiltValueField(wireName: r'xName3')
  String? get xName3;

  @BuiltValueField(wireName: r'xName4')
  String? get xName4;

  @BuiltValueField(wireName: r'yValue')
  double? get yValue;

  @BuiltValueField(wireName: r'yValue1')
  double? get yValue1;

  @BuiltValueField(wireName: r'yValue2')
  double? get yValue2;

  @BuiltValueField(wireName: r'yValue3')
  double? get yValue3;

  @BuiltValueField(wireName: r'yValue4')
  double? get yValue4;

  @BuiltValueField(wireName: r'yValue5')
  double? get yValue5;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'size')
  double? get size;

  ChartDataItem._();

  factory ChartDataItem([void updates(ChartDataItemBuilder b)]) = _$ChartDataItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChartDataItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChartDataItem> get serializer => _$ChartDataItemSerializer();
}

class _$ChartDataItemSerializer implements PrimitiveSerializer<ChartDataItem> {
  @override
  final Iterable<Type> types = const [ChartDataItem, _$ChartDataItem];

  @override
  final String wireName = r'ChartDataItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChartDataItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.xValue != null) {
      yield r'xValue';
      yield serializers.serialize(
        object.xValue,
        specifiedType: const FullType(double),
      );
    }
    if (object.xName != null) {
      yield r'xName';
      yield serializers.serialize(
        object.xName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.xName1 != null) {
      yield r'xName1';
      yield serializers.serialize(
        object.xName1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.xName2 != null) {
      yield r'xName2';
      yield serializers.serialize(
        object.xName2,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.xName3 != null) {
      yield r'xName3';
      yield serializers.serialize(
        object.xName3,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.xName4 != null) {
      yield r'xName4';
      yield serializers.serialize(
        object.xName4,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.yValue != null) {
      yield r'yValue';
      yield serializers.serialize(
        object.yValue,
        specifiedType: const FullType(double),
      );
    }
    if (object.yValue1 != null) {
      yield r'yValue1';
      yield serializers.serialize(
        object.yValue1,
        specifiedType: const FullType(double),
      );
    }
    if (object.yValue2 != null) {
      yield r'yValue2';
      yield serializers.serialize(
        object.yValue2,
        specifiedType: const FullType(double),
      );
    }
    if (object.yValue3 != null) {
      yield r'yValue3';
      yield serializers.serialize(
        object.yValue3,
        specifiedType: const FullType(double),
      );
    }
    if (object.yValue4 != null) {
      yield r'yValue4';
      yield serializers.serialize(
        object.yValue4,
        specifiedType: const FullType(double),
      );
    }
    if (object.yValue5 != null) {
      yield r'yValue5';
      yield serializers.serialize(
        object.yValue5,
        specifiedType: const FullType(double),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChartDataItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChartDataItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'xValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.xValue = valueDes;
          break;
        case r'xName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.xName = valueDes;
          break;
        case r'xName1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.xName1 = valueDes;
          break;
        case r'xName2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.xName2 = valueDes;
          break;
        case r'xName3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.xName3 = valueDes;
          break;
        case r'xName4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.xName4 = valueDes;
          break;
        case r'yValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yValue = valueDes;
          break;
        case r'yValue1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yValue1 = valueDes;
          break;
        case r'yValue2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yValue2 = valueDes;
          break;
        case r'yValue3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yValue3 = valueDes;
          break;
        case r'yValue4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yValue4 = valueDes;
          break;
        case r'yValue5':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yValue5 = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChartDataItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChartDataItemBuilder();
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

