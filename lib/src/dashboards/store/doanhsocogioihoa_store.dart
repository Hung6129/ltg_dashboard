import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
//import 'package:ltgdashboard/api/ltg_api_service.dart';
import 'package:mobx/mobx.dart';

import '../../api/services/ltg_api_service.dart';
part 'doanhsocogioihoa_store.g.dart';

class DoanhSoCoGioiHoaStore = _DoanhSoCoGioiHoaStore
    with _$DoanhSoCoGioiHoaStore;

abstract class _DoanhSoCoGioiHoaStore with Store {
  late LtgApi service; //= SgcrappService.createSGCRAppApi(null);

  _DoanhSoCoGioiHoaStore({BuildContext? context, LtgApi? apiService}) {
    if (apiService != null) {
      service = apiService;
    } else {
      service = LtgService.createLtgApi();
    }
  }

  static ObservableFuture<List<KpiDoanhSoCoGioiHoa>> emptyResponse =
      ObservableFuture.value([]);

  List<KpiDoanhSoCoGioiHoa> dataItem = [];

  @observable
  ObservableFuture<List<KpiDoanhSoCoGioiHoa>> fetchFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.fulfilled;

  @computed
  bool get isBusy => (fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.pending);

  @action
  Future<List<KpiDoanhSoCoGioiHoa>> fetchData(
      KpiDoanhSoCoGioiHoaInputDto inputDto) async {
    dataItem = [];

    try {
      final Future<List<KpiDoanhSoCoGioiHoa>> future = service
          .getKpiApi()
          .apiV1DashboardKpi6Post(kpiDoanhSoCoGioiHoaInputDto: inputDto)
          .then((result) => result.data?.toList() ?? <KpiDoanhSoCoGioiHoa>[]);
      fetchFuture = ObservableFuture(future);

      return dataItem = await future;
    } catch (error) {
      debugPrint(error.toString());
    }

    return [];
  }
}
