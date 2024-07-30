import 'package:ltg_api/ltg_api.dart';

class MuaVu {
  String? maMuaVu;
  String? tenMuaVu;
  int? nam;
  bool? hienHanh = false;

  MuaVu({this.maMuaVu, this.tenMuaVu, this.nam, this.hienHanh});

  MuaVu.fromJson(Map<String, dynamic> json) {
    if (json["maMuaVu"] is String) {
      maMuaVu = json["maMuaVu"];
    }
    if (json["tenMuaVu"] is String) {
      tenMuaVu = json["tenMuaVu"];
    }
    if (json["nam"] is int) {
      nam = json["nam"];
    }
    if (json["hienHanh"] is bool) {
      nam = json["hienHanh"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["maMuaVu"] = maMuaVu;
    _data["tenMuaVu"] = tenMuaVu;
    _data["nam"] = nam;
    _data["hienHanh"] = hienHanh;
    return _data;
  }

  MuaVu.fromDienTichLienKetSanXuat(KpiDienTichLienKetSanXuat dtlksx) {
    maMuaVu = dtlksx.maMuaVu;
    tenMuaVu = dtlksx.tenMuaVu;
    nam = dtlksx.nam;
    hienHanh = dtlksx.hienHanh;
  }
}
