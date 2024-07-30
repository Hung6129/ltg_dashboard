// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_dien_tich_lien_ket_san_xuat_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KpiDienTichLienKetSanXuatInputDto
    extends KpiDienTichLienKetSanXuatInputDto {
  @override
  final String? maNhanVien3C;
  @override
  final bool? laToTruong3C;
  @override
  final int? soMuaVu;

  factory _$KpiDienTichLienKetSanXuatInputDto(
          [void Function(KpiDienTichLienKetSanXuatInputDtoBuilder)? updates]) =>
      (new KpiDienTichLienKetSanXuatInputDtoBuilder()..update(updates))
          ._build();

  _$KpiDienTichLienKetSanXuatInputDto._(
      {this.maNhanVien3C, this.laToTruong3C, this.soMuaVu})
      : super._();

  @override
  KpiDienTichLienKetSanXuatInputDto rebuild(
          void Function(KpiDienTichLienKetSanXuatInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KpiDienTichLienKetSanXuatInputDtoBuilder toBuilder() =>
      new KpiDienTichLienKetSanXuatInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KpiDienTichLienKetSanXuatInputDto &&
        maNhanVien3C == other.maNhanVien3C &&
        laToTruong3C == other.laToTruong3C &&
        soMuaVu == other.soMuaVu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maNhanVien3C.hashCode);
    _$hash = $jc(_$hash, laToTruong3C.hashCode);
    _$hash = $jc(_$hash, soMuaVu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KpiDienTichLienKetSanXuatInputDto')
          ..add('maNhanVien3C', maNhanVien3C)
          ..add('laToTruong3C', laToTruong3C)
          ..add('soMuaVu', soMuaVu))
        .toString();
  }
}

class KpiDienTichLienKetSanXuatInputDtoBuilder
    implements
        Builder<KpiDienTichLienKetSanXuatInputDto,
            KpiDienTichLienKetSanXuatInputDtoBuilder> {
  _$KpiDienTichLienKetSanXuatInputDto? _$v;

  String? _maNhanVien3C;
  String? get maNhanVien3C => _$this._maNhanVien3C;
  set maNhanVien3C(String? maNhanVien3C) => _$this._maNhanVien3C = maNhanVien3C;

  bool? _laToTruong3C;
  bool? get laToTruong3C => _$this._laToTruong3C;
  set laToTruong3C(bool? laToTruong3C) => _$this._laToTruong3C = laToTruong3C;

  int? _soMuaVu;
  int? get soMuaVu => _$this._soMuaVu;
  set soMuaVu(int? soMuaVu) => _$this._soMuaVu = soMuaVu;

  KpiDienTichLienKetSanXuatInputDtoBuilder() {
    KpiDienTichLienKetSanXuatInputDto._defaults(this);
  }

  KpiDienTichLienKetSanXuatInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maNhanVien3C = $v.maNhanVien3C;
      _laToTruong3C = $v.laToTruong3C;
      _soMuaVu = $v.soMuaVu;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KpiDienTichLienKetSanXuatInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KpiDienTichLienKetSanXuatInputDto;
  }

  @override
  void update(
      void Function(KpiDienTichLienKetSanXuatInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KpiDienTichLienKetSanXuatInputDto build() => _build();

  _$KpiDienTichLienKetSanXuatInputDto _build() {
    final _$result = _$v ??
        new _$KpiDienTichLienKetSanXuatInputDto._(
            maNhanVien3C: maNhanVien3C,
            laToTruong3C: laToTruong3C,
            soMuaVu: soMuaVu);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
