//doanh thu
// Package imports
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../model/sample_view.dart';
import '../../utils/app_widgets.dart';
import '../store/doanhthuvattunongnghiep_store.dart';

class DoanhThuVTNNLineChart extends SampleView {
  /// Creates the column chart with columns width and space change option
  const DoanhThuVTNNLineChart(Key key, {super.data}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DoanhThuVTNNLineChartState createState() => _DoanhThuVTNNLineChartState();
}

class _DoanhThuVTNNLineChartState extends SampleViewState {
  _DoanhThuVTNNLineChartState();

  late List<KpiDoanhThuVatTuNongNghiep> _data = [];
  late List<String> _listNganh;
  late String? currentNganh;

  late double _horizontalPaddding;
  late double _verticalPaddding;
  ChartAlignment? _chartAlignment;
  ChartDataLabelAlignment? _labelPosition;

  var currencyM = 10000000.0; // triệu
  var currencyB = 1000000000.0; // tỷ
  late double currency = currencyM;

  bool needRefesh = true;

  @override
  void initState() {
    _chartAlignment = ChartAlignment.center;
    _labelPosition = ChartDataLabelAlignment.top;
    _horizontalPaddding = 0;
    _verticalPaddding = 0;

    // _bindData();
    super.initState();
  }

  void _bindData() {
    _listNganh = <String>[];
    currentNganh = null;
    if (_data != null) {
      var nganhGrouped = _data
          .groupListsBy((KpiDoanhThuVatTuNongNghiep obj) => obj.loaiHangHoa);

      _listNganh = nganhGrouped.keys.whereNotNull().toList();
      currentNganh = _listNganh.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (needRefesh) {
      needRefesh = false;
      //data from api
      var kpiDto = KpiDoanhThuVatTuNongNghiepInputDto((b) => b
        ..maNhanVien3C = 'nv001'
        ..laToTruong3C = true);
      var store = DoanhThuVatTuNongNghiepStore(context: context)
        ..fetchData(kpiDto);

      return Observer(builder: (context) {
        if (store.isBusy) {
          return Scaffold(body: loadingWidgetMaker().center());
        } else {
          _data = store.dataItem;
        }

        _bindData();

        if (_data.firstWhereOrNull((element) => element.keHoach! > currencyB) !=
            null) {
          currency = currencyB;
        }
        return _buildDashboard();
      });
    } else {
      return _buildDashboard();
    }
  }

  Widget _buildDashboard() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
        child: Column(
            // fit: StackFit.expand,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                      underline:
                          Container(color: const Color(0xFFBDBDBD), height: 1),
                      value: currentNganh,
                      items: _listNganh.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                style: TextStyle(
                                    color: model.textColor, fontSize: 12)));
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          currentNganh = value!;
                        });
                      }),
                ],
              ),
              Expanded(
                child: _buildDefaultLineChart(),
              ),
            ]));
  }

  /// Get the cartesian chart with default line series
  SfCartesianChart _buildDefaultLineChart() {
    // var isCardView = true;
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      // title: ChartTitle(
      //     text: model.,
      //     textStyle: TextStyle(fontFamily: 'Monserat', fontSize: 10)),
      legend: Legend(
          isVisible: !isCardView,
          overflowMode: LegendItemOverflowMode.wrap,
          position: LegendPosition.bottom,
          textStyle: const TextStyle(
              // fontFamily: 'Monserat',
              fontSize: 11)),
      primaryXAxis: const DateTimeAxis(
        majorGridLines: MajorGridLines(width: 0),
        labelStyle: TextStyle(
            // fontFamily: 'Monserat',
            fontSize: 10),
      ),
      primaryYAxis: const NumericAxis(
          labelStyle: TextStyle(
              // fontFamily: 'Monserat',
              fontSize: 11),
          labelFormat: '{value}',
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(color: Colors.transparent)),
      series: _getDefaultLineSeries(),
      tooltipBehavior: TooltipBehavior(
          enable: true,
          textStyle: const TextStyle(
              // fontFamily: 'Monserat',
              fontSize: 11)),
    );
  }

  /// The method returns line series to chart.
  List<LineSeries<KpiDoanhThuVatTuNongNghiep, DateTime>>
      _getDefaultLineSeries() {
    // var _list =
    //     _data.where((element) => element.nganh == currentNganh).toList();
    var list =
        _data.where((element) => element.loaiHangHoa == currentNganh).toList();

    return <LineSeries<KpiDoanhThuVatTuNongNghiep, DateTime>>[
      LineSeries<KpiDoanhThuVatTuNongNghiep, DateTime>(
          animationDuration: 2500,
          dataSource: list,
          xValueMapper: (KpiDoanhThuVatTuNongNghiep sales, _) =>
              sales.ngay as DateTime,
          yValueMapper: (KpiDoanhThuVatTuNongNghiep sales, _) =>
              (sales.keHoach! / currency),
          width: 1,
          name: 'Thực tế',
          markerSettings:
              const MarkerSettings(isVisible: true, height: 2.0, width: 2.0),
          dataLabelSettings: DataLabelSettings(
            textStyle: const TextStyle(
                // fontFamily: 'Monserat',
                fontSize: 8),
            isVisible: true,
            useSeriesColor: true,
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            alignment: _chartAlignment!,
            labelAlignment: _labelPosition!,
            offset: Offset(_horizontalPaddding, _verticalPaddding),
          )),
      LineSeries<KpiDoanhThuVatTuNongNghiep, DateTime>(
          animationDuration: 2500,
          dataSource: list,
          width: 1,
          name: 'Kế hoạch',
          xValueMapper: (KpiDoanhThuVatTuNongNghiep sales, _) =>
              sales.ngay as DateTime,
          yValueMapper: (KpiDoanhThuVatTuNongNghiep sales, _) =>
              (sales.thucTe! / currency).roundToDouble(),
          markerSettings:
              const MarkerSettings(isVisible: true, height: 2.0, width: 2.0),
          dataLabelSettings: DataLabelSettings(
            textStyle: const TextStyle(
                // fontFamily: 'Monserat',
                fontSize: 8),
            isVisible: true,
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            useSeriesColor: true,
            alignment: _chartAlignment!,
            labelAlignment: _labelPosition!,
            offset: Offset(_horizontalPaddding, _verticalPaddding),
          ))
    ];
  }
}
