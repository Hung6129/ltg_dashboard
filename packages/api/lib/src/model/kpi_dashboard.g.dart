// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_dashboard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KpiDashboard extends KpiDashboard {
  @override
  final String? key;
  @override
  final String? type;
  @override
  final String? title;
  @override
  final BuiltList<JsonObject>? data;
  @override
  final String? description;

  factory _$KpiDashboard([void Function(KpiDashboardBuilder)? updates]) =>
      (new KpiDashboardBuilder()..update(updates))._build();

  _$KpiDashboard._(
      {this.key, this.type, this.title, this.data, this.description})
      : super._();

  @override
  KpiDashboard rebuild(void Function(KpiDashboardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KpiDashboardBuilder toBuilder() => new KpiDashboardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KpiDashboard &&
        key == other.key &&
        type == other.type &&
        title == other.title &&
        data == other.data &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KpiDashboard')
          ..add('key', key)
          ..add('type', type)
          ..add('title', title)
          ..add('data', data)
          ..add('description', description))
        .toString();
  }
}

class KpiDashboardBuilder
    implements Builder<KpiDashboard, KpiDashboardBuilder> {
  _$KpiDashboard? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<JsonObject>? _data;
  ListBuilder<JsonObject> get data =>
      _$this._data ??= new ListBuilder<JsonObject>();
  set data(ListBuilder<JsonObject>? data) => _$this._data = data;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  KpiDashboardBuilder() {
    KpiDashboard._defaults(this);
  }

  KpiDashboardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _type = $v.type;
      _title = $v.title;
      _data = $v.data?.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KpiDashboard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KpiDashboard;
  }

  @override
  void update(void Function(KpiDashboardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KpiDashboard build() => _build();

  _$KpiDashboard _build() {
    _$KpiDashboard _$result;
    try {
      _$result = _$v ??
          new _$KpiDashboard._(
              key: key,
              type: type,
              title: title,
              data: _data?.build(),
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KpiDashboard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
