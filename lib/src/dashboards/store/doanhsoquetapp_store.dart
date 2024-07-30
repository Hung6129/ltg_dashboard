import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
//import 'package:ltgdashboard/api/ltg_api_service.dart';
import 'package:mobx/mobx.dart';

import '../../api/services/ltg_api_service.dart';
part 'doanhsoquetapp_store.g.dart';

class DoanhSoQuetAppStore = _DoanhSoQuetAppStore with _$DoanhSoQuetAppStore;

abstract class _DoanhSoQuetAppStore with Store {
  late LtgApi service; //= SgcrappService.createSGCRAppApi(null);

  _DoanhSoQuetAppStore({BuildContext? context, LtgApi? apiService}) {
    if (apiService != null) {
      service = apiService;
    } else {
      service = LtgService.createLtgApi();
    }
  }

  static ObservableFuture<List<KpiDoanhSoQuetApp>> emptyResponse =
      ObservableFuture.value([]);

  List<KpiDoanhSoQuetApp> dataItem = [];

  @observable
  ObservableFuture<List<KpiDoanhSoQuetApp>> fetchFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.fulfilled;

  @computed
  bool get isBusy => (fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.pending);

  @action
  Future<List<KpiDoanhSoQuetApp>> fetchData(
      KpiDoanhSoQuetAppInputDto inputDto) async {
    dataItem = [];

    try {
      final Future<List<KpiDoanhSoQuetApp>> future = service
          .getKpiApi()
          .apiV1DashboardKpi5Post(kpiDoanhSoQuetAppInputDto: inputDto)
          .then((result) => result.data?.toList() ?? <KpiDoanhSoQuetApp>[]);
      fetchFuture = ObservableFuture(future);

      return dataItem = await future;
    } catch (error) {
      debugPrint(error.toString());
    }

    return [];
  }
}
