// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChartData extends ChartData {
  @override
  final String? chartType;
  @override
  final String? chartTitle;
  @override
  final BuiltList<ChartDataItem>? dataItems;

  factory _$ChartData([void Function(ChartDataBuilder)? updates]) =>
      (new ChartDataBuilder()..update(updates))._build();

  _$ChartData._({this.chartType, this.chartTitle, this.dataItems}) : super._();

  @override
  ChartData rebuild(void Function(ChartDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChartDataBuilder toBuilder() => new ChartDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChartData &&
        chartType == other.chartType &&
        chartTitle == other.chartTitle &&
        dataItems == other.dataItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chartType.hashCode);
    _$hash = $jc(_$hash, chartTitle.hashCode);
    _$hash = $jc(_$hash, dataItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChartData')
          ..add('chartType', chartType)
          ..add('chartTitle', chartTitle)
          ..add('dataItems', dataItems))
        .toString();
  }
}

class ChartDataBuilder implements Builder<ChartData, ChartDataBuilder> {
  _$ChartData? _$v;

  String? _chartType;
  String? get chartType => _$this._chartType;
  set chartType(String? chartType) => _$this._chartType = chartType;

  String? _chartTitle;
  String? get chartTitle => _$this._chartTitle;
  set chartTitle(String? chartTitle) => _$this._chartTitle = chartTitle;

  ListBuilder<ChartDataItem>? _dataItems;
  ListBuilder<ChartDataItem> get dataItems =>
      _$this._dataItems ??= new ListBuilder<ChartDataItem>();
  set dataItems(ListBuilder<ChartDataItem>? dataItems) =>
      _$this._dataItems = dataItems;

  ChartDataBuilder() {
    ChartData._defaults(this);
  }

  ChartDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chartType = $v.chartType;
      _chartTitle = $v.chartTitle;
      _dataItems = $v.dataItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChartData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChartData;
  }

  @override
  void update(void Function(ChartDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChartData build() => _build();

  _$ChartData _build() {
    _$ChartData _$result;
    try {
      _$result = _$v ??
          new _$ChartData._(
              chartType: chartType,
              chartTitle: chartTitle,
              dataItems: _dataItems?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataItems';
        _dataItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChartData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
