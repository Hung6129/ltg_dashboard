import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:mobx/mobx.dart';

import '../../api/services/ltg_api_service.dart';
part 'noquahan_store.g.dart';

class NoQuaHanStore = _NoQuaHanStore with _$NoQuaHanStore;

abstract class _NoQuaHanStore with Store {
  late LtgApi service; //= SgcrappService.createSGCRAppApi(null);

  _NoQuaHanStore({BuildContext? context, LtgApi? apiService}) {
    if (apiService != null) {
      service = apiService;
    } else {
      service = LtgService.createLtgApi();
    }
  }

  static ObservableFuture<List<KpiNoQuaHan>> emptyResponse =
      ObservableFuture.value([]);

  List<KpiNoQuaHan> dataItem = [];

  @observable
  ObservableFuture<List<KpiNoQuaHan>> fetchFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.fulfilled;

  @computed
  bool get isBusy => (fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.pending);

  @action
  Future<List<KpiNoQuaHan>> fetchData(KpiNoQuaHanInputDto inputDto) async {
    dataItem = [];

    try {
      final Future<List<KpiNoQuaHan>> future = service
          .getKpiApi()
          .apiV1DashboardKpi3Post(kpiNoQuaHanInputDto: inputDto)
          .then((result) => result.data?.toList() ?? <KpiNoQuaHan>[]);
      fetchFuture = ObservableFuture(future);

      return dataItem = await future;
    } catch (error) {
      debugPrint(error.toString());
    }

    return [];
  }
}
