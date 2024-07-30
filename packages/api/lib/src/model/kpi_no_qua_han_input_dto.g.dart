// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_no_qua_han_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KpiNoQuaHanInputDto extends KpiNoQuaHanInputDto {
  @override
  final String? maNhanVien3C;
  @override
  final bool? laToTruong3C;

  factory _$KpiNoQuaHanInputDto(
          [void Function(KpiNoQuaHanInputDtoBuilder)? updates]) =>
      (new KpiNoQuaHanInputDtoBuilder()..update(updates))._build();

  _$KpiNoQuaHanInputDto._({this.maNhanVien3C, this.laToTruong3C}) : super._();

  @override
  KpiNoQuaHanInputDto rebuild(
          void Function(KpiNoQuaHanInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KpiNoQuaHanInputDtoBuilder toBuilder() =>
      new KpiNoQuaHanInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KpiNoQuaHanInputDto &&
        maNhanVien3C == other.maNhanVien3C &&
        laToTruong3C == other.laToTruong3C;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maNhanVien3C.hashCode);
    _$hash = $jc(_$hash, laToTruong3C.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KpiNoQuaHanInputDto')
          ..add('maNhanVien3C', maNhanVien3C)
          ..add('laToTruong3C', laToTruong3C))
        .toString();
  }
}

class KpiNoQuaHanInputDtoBuilder
    implements Builder<KpiNoQuaHanInputDto, KpiNoQuaHanInputDtoBuilder> {
  _$KpiNoQuaHanInputDto? _$v;

  String? _maNhanVien3C;
  String? get maNhanVien3C => _$this._maNhanVien3C;
  set maNhanVien3C(String? maNhanVien3C) => _$this._maNhanVien3C = maNhanVien3C;

  bool? _laToTruong3C;
  bool? get laToTruong3C => _$this._laToTruong3C;
  set laToTruong3C(bool? laToTruong3C) => _$this._laToTruong3C = laToTruong3C;

  KpiNoQuaHanInputDtoBuilder() {
    KpiNoQuaHanInputDto._defaults(this);
  }

  KpiNoQuaHanInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maNhanVien3C = $v.maNhanVien3C;
      _laToTruong3C = $v.laToTruong3C;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KpiNoQuaHanInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KpiNoQuaHanInputDto;
  }

  @override
  void update(void Function(KpiNoQuaHanInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KpiNoQuaHanInputDto build() => _build();

  _$KpiNoQuaHanInputDto _build() {
    final _$result = _$v ??
        new _$KpiNoQuaHanInputDto._(
            maNhanVien3C: maNhanVien3C, laToTruong3C: laToTruong3C);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
