import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:mobx/mobx.dart';

import '../../api/services/ltg_api_service.dart';
part 'doanhthuvattunongnghiep_store.g.dart';

class DoanhThuVatTuNongNghiepStore = _DoanhThuVatTuNongNghiepStore
    with _$DoanhThuVatTuNongNghiepStore;

abstract class _DoanhThuVatTuNongNghiepStore with Store {
  late LtgApi service; //= SgcrappService.createSGCRAppApi(null);

  _DoanhThuVatTuNongNghiepStore({BuildContext? context, LtgApi? apiService}) {
    if (apiService != null) {
      service = apiService;
    } else {
      service = LtgService.createLtgApi();
    }
  }

  static ObservableFuture<List<KpiDoanhThuVatTuNongNghiep>> emptyResponse =
      ObservableFuture.value([]);

  List<KpiDoanhThuVatTuNongNghiep> dataItem = [];

  @observable
  ObservableFuture<List<KpiDoanhThuVatTuNongNghiep>> fetchFuture =
      emptyResponse;

  @computed
  bool get hasResults =>
      fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.fulfilled;

  @computed
  bool get isBusy => (fetchFuture != emptyResponse &&
      fetchFuture.status == FutureStatus.pending);

  @action
  Future<List<KpiDoanhThuVatTuNongNghiep>> fetchData(
      KpiDoanhThuVatTuNongNghiepInputDto inputDto) async {
    dataItem = [];

    try {
      final Future<List<KpiDoanhThuVatTuNongNghiep>> future = service
          .getKpiApi()
          .apiV1DashboardKpi2Post(kpiDoanhThuVatTuNongNghiepInputDto: inputDto)
          .then((result) =>
              result.data?.toList() ?? <KpiDoanhThuVatTuNongNghiep>[]);
      fetchFuture = ObservableFuture(future);

      return dataItem = await future;
      // debugPrint(dataItem.toString());
      // return dataItem;
    } catch (error) {
      debugPrint(error.toString());
    }

    return [];
  }
}
