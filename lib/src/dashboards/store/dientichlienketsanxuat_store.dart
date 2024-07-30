import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:mobx/mobx.dart';

import '../../api/services/ltg_api_service.dart';
part 'dientichlienketsanxuat_store.g.dart';

class DienTichLienKetSanXuatStore = _DienTichLienKetSanXuatStore
    with _$DienTichLienKetSanXuatStore;

abstract class _DienTichLienKetSanXuatStore with Store {
  late LtgApi service; //= SgcrappService.createSGCRAppApi(null);

  _DienTichLienKetSanXuatStore({BuildContext? context, LtgApi? apiService}) {
    if (apiService != null) {
      service = apiService;
    } else {
      service = LtgService.createLtgApi();
    }
  }

  static ObservableFuture<List<KpiDienTichLienKetSanXuat>> emptyResponse =
      ObservableFuture.value([]);

  List<KpiDienTichLienKetSanXuat> dataItem = [];

  @observable
  ObservableFuture<List<KpiDienTichLienKetSanXuat>> fetchFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.fulfilled;

  @computed
  bool get isBusy => (fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.pending);

  @action
  Future<List<KpiDienTichLienKetSanXuat>> fetchData(
      KpiDienTichLienKetSanXuatInputDto inputDto) async {
    dataItem = [];

    try {
      final Future<List<KpiDienTichLienKetSanXuat>> future = service
          .getKpiApi()
          .apiV1DashboardKpi1Post(kpiDienTichLienKetSanXuatInputDto: inputDto)
          .then((result) =>
              result.data?.toList() ?? <KpiDienTichLienKetSanXuat>[]);
      fetchFuture = ObservableFuture(future);

      return dataItem = await future;
    } catch (error) {
      debugPrint(error.toString());
    }

    return [];
  }
}
