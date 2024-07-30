//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bad_request_value.g.dart';

/// BadRequestValue
///
/// Properties:
/// * [code] 
/// * [message] 
@BuiltValue()
abstract class BadRequestValue implements Built<BadRequestValue, BadRequestValueBuilder> {
  @BuiltValueField(wireName: r'code')
  int? get code;

  @BuiltValueField(wireName: r'message')
  String? get message;

  BadRequestValue._();

  factory BadRequestValue([void updates(BadRequestValueBuilder b)]) = _$BadRequestValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BadRequestValueBuilder b) => b
      ..code = 400
      ..message = 'Nội dung thông báo lỗi';

  @BuiltValueSerializer(custom: true)
  static Serializer<BadRequestValue> get serializer => _$BadRequestValueSerializer();
}

class _$BadRequestValueSerializer implements PrimitiveSerializer<BadRequestValue> {
  @override
  final Iterable<Type> types = const [BadRequestValue, _$BadRequestValue];

  @override
  final String wireName = r'BadRequestValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BadRequestValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BadRequestValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BadRequestValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BadRequestValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BadRequestValueBuilder();
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

