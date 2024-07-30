// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bad_request_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BadRequestValue extends BadRequestValue {
  @override
  final int? code;
  @override
  final String? message;

  factory _$BadRequestValue([void Function(BadRequestValueBuilder)? updates]) =>
      (new BadRequestValueBuilder()..update(updates))._build();

  _$BadRequestValue._({this.code, this.message}) : super._();

  @override
  BadRequestValue rebuild(void Function(BadRequestValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BadRequestValueBuilder toBuilder() =>
      new BadRequestValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BadRequestValue &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BadRequestValue')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class BadRequestValueBuilder
    implements Builder<BadRequestValue, BadRequestValueBuilder> {
  _$BadRequestValue? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BadRequestValueBuilder() {
    BadRequestValue._defaults(this);
  }

  BadRequestValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BadRequestValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BadRequestValue;
  }

  @override
  void update(void Function(BadRequestValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BadRequestValue build() => _build();

  _$BadRequestValue _build() {
    final _$result =
        _$v ?? new _$BadRequestValue._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
