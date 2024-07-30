class DienTichLienKetSanXuat {
  String maMuaVu = '';
  String tenMuaVu = '';
  int? nam;
  double keHoach = 0.0;
  double thucTe = 0.0;
  bool? hienHanh;

  DienTichLienKetSanXuat(
      {required this.maMuaVu,
      required this.tenMuaVu,
      this.nam,
      required this.keHoach,
      required this.thucTe,
      this.hienHanh});

  DienTichLienKetSanXuat.fromJson(Map<String, dynamic> json) {
    if (json["maMuaVu"] is String) {
      maMuaVu = json["maMuaVu"];
    }
    if (json["tenMuaVu"] is String) {
      tenMuaVu = json["tenMuaVu"];
    }
    if (json["nam"] is int) {
      nam = json["nam"];
    }
    if (json["keHoach"] is double) {
      keHoach = json["keHoach"];
    }
    if (json["thucTe"] is double) {
      thucTe = json["thucTe"];
    }
    if (json["hienHanh"] is bool) {
      hienHanh = json["hienHanh"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["maMuaVu"] = maMuaVu;
    _data["tenMuaVu"] = tenMuaVu;
    _data["nam"] = nam;
    _data["keHoach"] = keHoach;
    _data["thucTe"] = thucTe;
    _data["hienHanh"] = hienHanh;
    return _data;
  }

  double get percent => keHoach != 0 ? (thucTe / keHoach) * 100.0 : 0;
}
