//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:ltg_api/src/date_serializer.dart';
import 'package:ltg_api/src/model/date.dart';

import 'package:ltg_api/src/model/bad_request_value.dart';
import 'package:ltg_api/src/model/chart_data.dart';
import 'package:ltg_api/src/model/chart_data_item.dart';
import 'package:ltg_api/src/model/kpi_dashboard.dart';
import 'package:ltg_api/src/model/kpi_dien_tich_lien_ket_san_xuat.dart';
import 'package:ltg_api/src/model/kpi_dien_tich_lien_ket_san_xuat_input_dto.dart';
import 'package:ltg_api/src/model/kpi_dien_tich_thu_mua.dart';
import 'package:ltg_api/src/model/kpi_dien_tich_thu_mua_input_dto.dart';
import 'package:ltg_api/src/model/kpi_doanh_so_co_gioi_hoa.dart';
import 'package:ltg_api/src/model/kpi_doanh_so_co_gioi_hoa_input_dto.dart';
import 'package:ltg_api/src/model/kpi_doanh_so_quet_app.dart';
import 'package:ltg_api/src/model/kpi_doanh_so_quet_app_input_dto.dart';
import 'package:ltg_api/src/model/kpi_doanh_thu_vat_tu_nong_nghiep.dart';
import 'package:ltg_api/src/model/kpi_doanh_thu_vat_tu_nong_nghiep_input_dto.dart';
import 'package:ltg_api/src/model/kpi_no_qua_han.dart';
import 'package:ltg_api/src/model/kpi_no_qua_han_input_dto.dart';
import 'package:ltg_api/src/model/problem_details.dart';

part 'serializers.g.dart';

@SerializersFor([
  BadRequestValue,
  ChartData,
  ChartDataItem,
  KpiDashboard,
  KpiDienTichLienKetSanXuat,
  KpiDienTichLienKetSanXuatInputDto,
  KpiDienTichThuMua,
  KpiDienTichThuMuaInputDto,
  KpiDoanhSoCoGioiHoa,
  KpiDoanhSoCoGioiHoaInputDto,
  KpiDoanhSoQuetApp,
  KpiDoanhSoQuetAppInputDto,
  KpiDoanhThuVatTuNongNghiep,
  KpiDoanhThuVatTuNongNghiepInputDto,
  KpiNoQuaHan,
  KpiNoQuaHanInputDto,
  ProblemDetails,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KpiDienTichLienKetSanXuat)]),
        () => ListBuilder<KpiDienTichLienKetSanXuat>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KpiNoQuaHan)]),
        () => ListBuilder<KpiNoQuaHan>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KpiDoanhSoQuetApp)]),
        () => ListBuilder<KpiDoanhSoQuetApp>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KpiDoanhSoCoGioiHoa)]),
        () => ListBuilder<KpiDoanhSoCoGioiHoa>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KpiDoanhThuVatTuNongNghiep)]),
        () => ListBuilder<KpiDoanhThuVatTuNongNghiep>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ChartData)]),
        () => ListBuilder<ChartData>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KpiDashboard)]),
        () => ListBuilder<KpiDashboard>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(KpiDienTichThuMua)]),
        () => ListBuilder<KpiDienTichThuMua>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
