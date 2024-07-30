import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:mobx/mobx.dart';

import '../../api/services/ltg_api_service.dart';
part 'kpi_dashboard_store.g.dart';

class KpiDashboardStore = _KpiDashboardStore with _$KpiDashboardStore;

abstract class _KpiDashboardStore with Store {
  late LtgApi service; //= SgcrappService.createSGCRAppApi(null);

  _KpiDashboardStore({BuildContext? context, LtgApi? apiService}) {
    if (apiService != null) {
      service = apiService;
    } else {
      service = LtgService.createLtgApi();
    }
  }

  static ObservableFuture<List<KpiDashboard>> emptyResponse =
      ObservableFuture.value([]);

  List<KpiDashboard> dataItem = [];

  @observable
  ObservableFuture<List<KpiDashboard>> fetchFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.fulfilled;

  @computed
  bool get isBusy => (fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.pending);

  @action
  Future<List<KpiDashboard>> fetchData() async {
    dataItem = [];

    try {
      final Future<List<KpiDashboard>> future = service
          .getKpiApi()
          .apiV1DashboardListGet()
          .then((result) => result.data?.toList() ?? <KpiDashboard>[]);
      fetchFuture = ObservableFuture(future);

      return dataItem = await future;
    } catch (error) {
      debugPrint(error.toString());
    }

    return [];
  }
}
