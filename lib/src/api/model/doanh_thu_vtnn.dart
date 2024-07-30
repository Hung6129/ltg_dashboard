class DoanhThuVatTuNongNghiep {
  String? nganh;
  DateTime? x;
  int? y1;
  int? y2;

  DoanhThuVatTuNongNghiep({this.nganh, this.x, this.y1, this.y2});

  DoanhThuVatTuNongNghiep.fromJson(Map<String, dynamic> json) {
    if (json["nganh"] is String) {
      nganh = json["nganh"];
    }
    x = DateTime.parse(json['x']);

    if (json["y1"] is int) {
      y1 = json["y1"];
    }
    if (json["y2"] is int) {
      y2 = json["y2"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["nganh"] = nganh;
    _data["x"] = x;
    _data["y1"] = y1;
    _data["y2"] = y2;
    return _data;
  }
}
