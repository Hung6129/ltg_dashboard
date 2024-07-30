// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_dien_tich_thu_mua_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KpiDienTichThuMuaInputDto extends KpiDienTichThuMuaInputDto {
  @override
  final String? maNhanVien3C;
  @override
  final bool? laToTruong3C;

  factory _$KpiDienTichThuMuaInputDto(
          [void Function(KpiDienTichThuMuaInputDtoBuilder)? updates]) =>
      (new KpiDienTichThuMuaInputDtoBuilder()..update(updates))._build();

  _$KpiDienTichThuMuaInputDto._({this.maNhanVien3C, this.laToTruong3C})
      : super._();

  @override
  KpiDienTichThuMuaInputDto rebuild(
          void Function(KpiDienTichThuMuaInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KpiDienTichThuMuaInputDtoBuilder toBuilder() =>
      new KpiDienTichThuMuaInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KpiDienTichThuMuaInputDto &&
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
    return (newBuiltValueToStringHelper(r'KpiDienTichThuMuaInputDto')
          ..add('maNhanVien3C', maNhanVien3C)
          ..add('laToTruong3C', laToTruong3C))
        .toString();
  }
}

class KpiDienTichThuMuaInputDtoBuilder
    implements
        Builder<KpiDienTichThuMuaInputDto, KpiDienTichThuMuaInputDtoBuilder> {
  _$KpiDienTichThuMuaInputDto? _$v;

  String? _maNhanVien3C;
  String? get maNhanVien3C => _$this._maNhanVien3C;
  set maNhanVien3C(String? maNhanVien3C) => _$this._maNhanVien3C = maNhanVien3C;

  bool? _laToTruong3C;
  bool? get laToTruong3C => _$this._laToTruong3C;
  set laToTruong3C(bool? laToTruong3C) => _$this._laToTruong3C = laToTruong3C;

  KpiDienTichThuMuaInputDtoBuilder() {
    KpiDienTichThuMuaInputDto._defaults(this);
  }

  KpiDienTichThuMuaInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maNhanVien3C = $v.maNhanVien3C;
      _laToTruong3C = $v.laToTruong3C;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KpiDienTichThuMuaInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KpiDienTichThuMuaInputDto;
  }

  @override
  void update(void Function(KpiDienTichThuMuaInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KpiDienTichThuMuaInputDto build() => _build();

  _$KpiDienTichThuMuaInputDto _build() {
    final _$result = _$v ??
        new _$KpiDienTichThuMuaInputDto._(
            maNhanVien3C: maNhanVien3C, laToTruong3C: laToTruong3C);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
