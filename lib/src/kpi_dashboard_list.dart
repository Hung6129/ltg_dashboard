import 'package:flutter/foundation.dart';

import 'dashboards/components/dien_tich_lksx_gauge_pointer.dart';
import 'dashboards/components/doanh_so_quet_app_area_chart.dart';
import 'dashboards/components/doanh_thu_co_gioi_hoa_line_chart.dart';
import 'dashboards/components/doanh_thu_vtnn_line_chart.dart';
import 'dashboards/components/no_qua_han_column_chart.dart';
import 'dashboards/components/thu_mua_area_chart.dart';

Map<String, Function> getKpiDashboardWidget() {
  return <String, Function>{
    'kpi_dien_tich_lksx': (Key key, {dynamic data}) =>
        DienTichLKSXGaugePointer(key, data: data),
    'kpi_doanh_thu_vtnn': (Key key, {dynamic data}) =>
        DoanhThuVTNNLineChart(key, data: data),
    'kpi_no_qua_han': (Key key, {dynamic data}) =>
        NoQuaHanColumnChart(key, data: data),
    'kpi_thu_mua': (Key key, {dynamic data}) =>
        ThuMuaAreaChart(key, data: data),
    'kpi_doanh_so_quet_app': (Key key, {dynamic data}) =>
        DoanhSoQuetAppAreaDefault(key, data: data),
    'kpi_doanh_thu_co_gioi_hoa': (Key key, {dynamic data}) =>
        DoanhThuCoGioiHoaLineChart(key, data: data),
  };
}
