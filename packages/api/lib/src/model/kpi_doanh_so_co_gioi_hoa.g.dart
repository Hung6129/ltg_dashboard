// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi_doanh_so_co_gioi_hoa.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KpiDoanhSoCoGioiHoa extends KpiDoanhSoCoGioiHoa {
  @override
  final String? maNhanVien3C;
  @override
  final String? tenNhanVien3C;
  @override
  final DateTime? ngay;
  @override
  final String? loaiDichVu;
  @override
  final double? keHoach;
  @override
  final double? thucTe;

  factory _$KpiDoanhSoCoGioiHoa(
          [void Function(KpiDoanhSoCoGioiHoaBuilder)? updates]) =>
      (new KpiDoanhSoCoGioiHoaBuilder()..update(updates))._build();

  _$KpiDoanhSoCoGioiHoa._(
      {this.maNhanVien3C,
      this.tenNhanVien3C,
      this.ngay,
      this.loaiDichVu,
      this.keHoach,
      this.thucTe})
      : super._();

  @override
  KpiDoanhSoCoGioiHoa rebuild(
          void Function(KpiDoanhSoCoGioiHoaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KpiDoanhSoCoGioiHoaBuilder toBuilder() =>
      new KpiDoanhSoCoGioiHoaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KpiDoanhSoCoGioiHoa &&
        maNhanVien3C == other.maNhanVien3C &&
        tenNhanVien3C == other.tenNhanVien3C &&
        ngay == other.ngay &&
        loaiDichVu == other.loaiDichVu &&
        keHoach == other.keHoach &&
        thucTe == other.thucTe;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maNhanVien3C.hashCode);
    _$hash = $jc(_$hash, tenNhanVien3C.hashCode);
    _$hash = $jc(_$hash, ngay.hashCode);
    _$hash = $jc(_$hash, loaiDichVu.hashCode);
    _$hash = $jc(_$hash, keHoach.hashCode);
    _$hash = $jc(_$hash, thucTe.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KpiDoanhSoCoGioiHoa')
          ..add('maNhanVien3C', maNhanVien3C)
          ..add('tenNhanVien3C', tenNhanVien3C)
          ..add('ngay', ngay)
          ..add('loaiDichVu', loaiDichVu)
          ..add('keHoach', keHoach)
          ..add('thucTe', thucTe))
        .toString();
  }
}

class KpiDoanhSoCoGioiHoaBuilder
    implements Builder<KpiDoanhSoCoGioiHoa, KpiDoanhSoCoGioiHoaBuilder> {
  _$KpiDoanhSoCoGioiHoa? _$v;

  String? _maNhanVien3C;
  String? get maNhanVien3C => _$this._maNhanVien3C;
  set maNhanVien3C(String? maNhanVien3C) => _$this._maNhanVien3C = maNhanVien3C;

  String? _tenNhanVien3C;
  String? get tenNhanVien3C => _$this._tenNhanVien3C;
  set tenNhanVien3C(String? tenNhanVien3C) =>
      _$this._tenNhanVien3C = tenNhanVien3C;

  DateTime? _ngay;
  DateTime? get ngay => _$this._ngay;
  set ngay(DateTime? ngay) => _$this._ngay = ngay;

  String? _loaiDichVu;
  String? get loaiDichVu => _$this._loaiDichVu;
  set loaiDichVu(String? loaiDichVu) => _$this._loaiDichVu = loaiDichVu;

  double? _keHoach;
  double? get keHoach => _$this._keHoach;
  set keHoach(double? keHoach) => _$this._keHoach = keHoach;

  double? _thucTe;
  double? get thucTe => _$this._thucTe;
  set thucTe(double? thucTe) => _$this._thucTe = thucTe;

  KpiDoanhSoCoGioiHoaBuilder() {
    KpiDoanhSoCoGioiHoa._defaults(this);
  }

  KpiDoanhSoCoGioiHoaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maNhanVien3C = $v.maNhanVien3C;
      _tenNhanVien3C = $v.tenNhanVien3C;
      _ngay = $v.ngay;
      _loaiDichVu = $v.loaiDichVu;
      _keHoach = $v.keHoach;
      _thucTe = $v.thucTe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KpiDoanhSoCoGioiHoa other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KpiDoanhSoCoGioiHoa;
  }

  @override
  void update(void Function(KpiDoanhSoCoGioiHoaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KpiDoanhSoCoGioiHoa build() => _build();

  _$KpiDoanhSoCoGioiHoa _build() {
    final _$result = _$v ??
        new _$KpiDoanhSoCoGioiHoa._(
            maNhanVien3C: maNhanVien3C,
            tenNhanVien3C: tenNhanVien3C,
            ngay: ngay,
            loaiDichVu: loaiDichVu,
            keHoach: keHoach,
            thucTe: thucTe);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
