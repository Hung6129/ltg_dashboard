// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_doanh_thu_vat_tu_nong_nghiep_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KpiDoanhThuVatTuNongNghiepInputDto
    extends KpiDoanhThuVatTuNongNghiepInputDto {
  @override
  final String? maNhanVien3C;
  @override
  final bool? laToTruong3C;

  factory _$KpiDoanhThuVatTuNongNghiepInputDto(
          [void Function(KpiDoanhThuVatTuNongNghiepInputDtoBuilder)?
              updates]) =>
      (new KpiDoanhThuVatTuNongNghiepInputDtoBuilder()..update(updates))
          ._build();

  _$KpiDoanhThuVatTuNongNghiepInputDto._({this.maNhanVien3C, this.laToTruong3C})
      : super._();

  @override
  KpiDoanhThuVatTuNongNghiepInputDto rebuild(
          void Function(KpiDoanhThuVatTuNongNghiepInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KpiDoanhThuVatTuNongNghiepInputDtoBuilder toBuilder() =>
      new KpiDoanhThuVatTuNongNghiepInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KpiDoanhThuVatTuNongNghiepInputDto &&
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
    return (newBuiltValueToStringHelper(r'KpiDoanhThuVatTuNongNghiepInputDto')
          ..add('maNhanVien3C', maNhanVien3C)
          ..add('laToTruong3C', laToTruong3C))
        .toString();
  }
}

class KpiDoanhThuVatTuNongNghiepInputDtoBuilder
    implements
        Builder<KpiDoanhThuVatTuNongNghiepInputDto,
            KpiDoanhThuVatTuNongNghiepInputDtoBuilder> {
  _$KpiDoanhThuVatTuNongNghiepInputDto? _$v;

  String? _maNhanVien3C;
  String? get maNhanVien3C => _$this._maNhanVien3C;
  set maNhanVien3C(String? maNhanVien3C) => _$this._maNhanVien3C = maNhanVien3C;

  bool? _laToTruong3C;
  bool? get laToTruong3C => _$this._laToTruong3C;
  set laToTruong3C(bool? laToTruong3C) => _$this._laToTruong3C = laToTruong3C;

  KpiDoanhThuVatTuNongNghiepInputDtoBuilder() {
    KpiDoanhThuVatTuNongNghiepInputDto._defaults(this);
  }

  KpiDoanhThuVatTuNongNghiepInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maNhanVien3C = $v.maNhanVien3C;
      _laToTruong3C = $v.laToTruong3C;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KpiDoanhThuVatTuNongNghiepInputDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KpiDoanhThuVatTuNongNghiepInputDto;
  }

  @override
  void update(
      void Function(KpiDoanhThuVatTuNongNghiepInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KpiDoanhThuVatTuNongNghiepInputDto build() => _build();

  _$KpiDoanhThuVatTuNongNghiepInputDto _build() {
    final _$result = _$v ??
        new _$KpiDoanhThuVatTuNongNghiepInputDto._(
            maNhanVien3C: maNhanVien3C, laToTruong3C: laToTruong3C);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
