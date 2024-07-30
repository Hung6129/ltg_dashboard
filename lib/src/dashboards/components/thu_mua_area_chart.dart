//doanh thu
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/sample_view.dart';
import '../../utils/app_widgets.dart';
import '../store/dientichthumua_store.dart';

class ThuMuaAreaChart extends SampleView {
  /// Creates the column chart with columns width and space change option
  const ThuMuaAreaChart(Key key, {super.data}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ThuMuaAreaChartState createState() => _ThuMuaAreaChartState();
}

class _ThuMuaAreaChartState extends SampleViewState {
  _ThuMuaAreaChartState();
  late double _columnWidth;
  late double _columnSpacing;

  late List<KpiDienTichThuMua> _data = [];
  late List<String> _listMuaVu;
  late String? currentMuaVu;

  late double _horizontalPaddding;
  late double _verticalPaddding;
  ChartAlignment? _chartAlignment;
  ChartDataLabelAlignment? _labelPosition;

  var currencyM = 10000000.0; // triệu
  var currencyB = 1000000000.0; // tỷ
  late double currency = currencyM;
  late bool needRefesh = true;

  @override
  void initState() {
    _columnWidth = 0.8;
    _columnSpacing = 0.2;
    _chartAlignment = ChartAlignment.center;
    _labelPosition = ChartDataLabelAlignment.top;
    _horizontalPaddding = 0;
    _verticalPaddding = 0;

    // _bindData();
    super.initState();
  }

  void _bindData() {
    _listMuaVu = <String>[];
    currentMuaVu = null;
    if (_data != null) {
      var nganhGrouped =
          _data.groupListsBy((KpiDienTichThuMua obj) => obj.tenMuaVu);

      _listMuaVu = nganhGrouped.keys.whereNotNull().toList();
      currentMuaVu = _listMuaVu.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (needRefesh) {
      needRefesh = false;
      //data from api
      var kpiDto = KpiDienTichThuMuaInputDto((b) => b
        ..maNhanVien3C = 'nv001'
        ..laToTruong3C = true);
      final store = DienTichThuMuaStore(context: context)..fetchData(kpiDto);

      return Observer(builder: (context) {
        if (store.isBusy) {
          return Scaffold(body: loadingWidgetMaker().center());
        } else {
          _data = store.dataItem;
        }

        _bindData();

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
                      value: currentMuaVu,
                      items: _listMuaVu.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                style: TextStyle(
                                    color: model.textColor, fontSize: 12)));
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          currentMuaVu = value!;
                        });
                      }),
                ],
              ),
              Expanded(
                child: _buildDefaultAreaChart(),
              ),
            ]));
  }

  /// Returns the default cartesian area chart.
  SfCartesianChart _buildDefaultAreaChart() {
    return SfCartesianChart(
      legend: Legend(
        isVisible: isCardView,
        overflowMode: LegendItemOverflowMode.wrap,
        position: LegendPosition.bottom,
        opacity: 0.9,
        textStyle: const TextStyle(fontSize: 11),
      ),
      title: const ChartTitle(text: "Diện tích thu mua"),
      plotAreaBorderWidth: 0,
      axes: const <ChartAxis>[
        NumericAxis(
          opposedPosition: true,
          name: 'yAxis1',
          majorGridLines: MajorGridLines(width: 0),
          labelFormat: '{value}',
          //minimum: 40,
          //maximum: 100,
          //interval: 10
        )
      ],
      primaryXAxis: const DateTimeAxis(
        majorGridLines: MajorGridLines(width: 0),
        labelStyle: TextStyle(fontSize: 10),
        labelFormat: '{value}',
      ),
      primaryYAxis: const NumericAxis(
          labelFormat: '{value}',
          title: AxisTitle(text: "Diện tích thu mua"),
          interval: 1,
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(size: 0)),
      series: _getDefaultAreaSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  /// Returns the list of Chart series
  /// which need to render on the default area chart.
  List<CartesianSeries<KpiDienTichThuMua, DateTime>> _getDefaultAreaSeries() {
    var _list =
        _data.where((element) => element.tenMuaVu == currentMuaVu).toList();
    return <CartesianSeries<KpiDienTichThuMua, DateTime>>[
      AreaSeries<KpiDienTichThuMua, DateTime>(
          dataSource: _list,
          opacity: 1,
          name: 'Thực hiện LK',
          color: const Color.fromRGBO(112, 173, 71, 1),
          xValueMapper: (KpiDienTichThuMua sales, _) => sales.ngay as DateTime,
          yValueMapper: (KpiDienTichThuMua sales, _) =>
              (sales.thuMua!).roundToDouble(),
          dataLabelSettings: const DataLabelSettings(isVisible: true)),
      AreaSeries<KpiDienTichThuMua, DateTime>(
          dataSource: _list,
          opacity: 1,
          name: 'Kế hoạch LK',
          color: const Color.fromRGBO(191, 144, 0, 1),
          xValueMapper: (KpiDienTichThuMua sales, _) => sales.ngay as DateTime,
          yValueMapper: (KpiDienTichThuMua sales, _) =>
              (sales.thucHien!).roundToDouble(),
          dataLabelSettings: const DataLabelSettings(isVisible: true)),
      LineSeries<KpiDienTichThuMua, DateTime>(
          dataSource: _list,
          yAxisName: 'yAxis1',
          //dashArray: <double>[5, 5, 3, 3],
          xValueMapper: (KpiDienTichThuMua sales, _) => sales.ngay as DateTime,
          yValueMapper: (KpiDienTichThuMua sales, _) => num.parse(
              ((sales.thuMua! / sales.thucHien!) * 100).toStringAsFixed(2)),
          color: const Color.fromRGBO(89, 89, 89, 1),
          name: 'Tiến độ thực hiện LK ',
          markerSettings: const MarkerSettings(isVisible: true),
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            useSeriesColor: true,
            alignment: _chartAlignment!,
            labelAlignment: _labelPosition!,
            offset: const Offset(0, 0),
          ))
    ];
  }
}
