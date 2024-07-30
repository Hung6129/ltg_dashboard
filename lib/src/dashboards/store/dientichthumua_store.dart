import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:mobx/mobx.dart';

import '../../api/services/ltg_api_service.dart';
part 'dientichthumua_store.g.dart';

class DienTichThuMuaStore = _DienTichThuMuaStore with _$DienTichThuMuaStore;

abstract class _DienTichThuMuaStore with Store {
  late LtgApi service; //= SgcrappService.createSGCRAppApi(null);

  _DienTichThuMuaStore({BuildContext? context, LtgApi? apiService}) {
    if (apiService != null) {
      service = apiService;
    } else {
      service = LtgService.createLtgApi();
    }
  }

  static ObservableFuture<List<KpiDienTichThuMua>> emptyResponse =
      ObservableFuture.value([]);

  List<KpiDienTichThuMua> dataItem = [];

  @observable
  ObservableFuture<List<KpiDienTichThuMua>> fetchFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.fulfilled;

  @computed
  bool get isBusy => (fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.pending);

  @action
  Future<List<KpiDienTichThuMua>> fetchData(
      KpiDienTichThuMuaInputDto inputDto) async {
    dataItem = [];

    try {
      final Future<List<KpiDienTichThuMua>> future = service
          .getKpiApi()
          .apiV1DashboardKpi4Post(kpiDienTichThuMuaInputDto: inputDto)
          .then((result) => result.data?.toList() ?? <KpiDienTichThuMua>[]);
      fetchFuture = ObservableFuture(future);

      return dataItem = await future;
      //return dataItem;
    } catch (error) {
      debugPrint(error.toString());
    }

    return [];
  }
}
