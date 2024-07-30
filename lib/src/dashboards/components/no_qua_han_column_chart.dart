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
import '../store/noquahan_store.dart';

class NoQuaHanColumnChart extends SampleView {
  /// Creates the column chart with columns width and space change option
  const NoQuaHanColumnChart(Key key, {super.data}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NoQuaHanColumnChartState createState() => _NoQuaHanColumnChartState();
}

class _NoQuaHanColumnChartState extends SampleViewState {
  _NoQuaHanColumnChartState();
  late double _columnWidth;
  late double _columnSpacing;

  late List<KpiNoQuaHan> _data = [];
  late List<String> _listNganh;
  late String? currentNganh;

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
    _listNganh = <String>[];
    currentNganh = null;
    if (_data != null) {
      var nganhGrouped =
          _data.groupListsBy((KpiNoQuaHan obj) => obj.loaiHangHoa);

      _listNganh = nganhGrouped.keys.whereNotNull().toList();
      currentNganh = _listNganh.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (needRefesh) {
      needRefesh = false;
      //data from api
      var kpiDto = KpiNoQuaHanInputDto((b) => b
        ..maNhanVien3C = 'nv001'
        ..laToTruong3C = true);
      final store = NoQuaHanStore(context: context)..fetchData(kpiDto);

      return Observer(builder: (context) {
        if (store.isBusy) {
          return Scaffold(body: loadingWidgetMaker().center());
        } else {
          _data = store.dataItem;
        }

        _bindData();

        if (_data.firstWhereOrNull((element) => element.no! > currencyB) !=
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
                child: _buildSpacingColumnChart(),
              ),
            ]));
  }

  ///Get the cartesian chart widget
  SfCartesianChart _buildSpacingColumnChart() {
    return SfCartesianChart(
        plotAreaBorderWidth: 0,
        title: const ChartTitle(text: "Nợ quá hạn"),

        /// API for multiple axis. It can returns the various axis to the chart.
        axes: const <ChartAxis>[
          NumericAxis(
            opposedPosition: true,
            name: 'yAxis1',
            majorGridLines: MajorGridLines(width: 0),
            labelFormat: '{value} %',
          )
        ],
        primaryXAxis: const CategoryAxis(
          majorGridLines: MajorGridLines(width: 0),
        ),
        primaryYAxis: const NumericAxis(
            //maximum: 100,
            //minimum: 0,
            //interval: 4,
            axisLine: AxisLine(width: 0),
            majorTickLines: MajorTickLines(size: 0)),
        series: _getDefaultColumn(),
        tooltipBehavior: TooltipBehavior(
            enable: true,
            textStyle: const TextStyle(
                // fontFamily: 'Monserat',
                fontSize: 11)),
        legend: Legend(
          isVisible: !isCardView,
          toggleSeriesVisibility: true,
          position: LegendPosition.bottom,
        ));
  }

  ///Get the column series
  List<CartesianSeries<KpiNoQuaHan, String>> _getDefaultColumn() {
    var isCardView = true;
    var _list =
        _data.where((element) => element.loaiHangHoa == currentNganh).toList();

    return <CartesianSeries<KpiNoQuaHan, String>>[
      ColumnSeries<KpiNoQuaHan, String>(

          /// To apply the column width here.
          width: true ? 0.8 : _columnWidth,

          /// To apply the spacing betweeen to two columns here.
          spacing: isCardView ? 0.2 : _columnSpacing,
          dataSource: _list,
          color: const Color.fromRGBO(68, 114, 196, 1),
          xValueMapper: (KpiNoQuaHan sales, _) => sales.tenMuaVu as String,
          yValueMapper: (KpiNoQuaHan sales, _) =>
              (sales.doanhThu! / currency).roundToDouble(),
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          name: 'Doanh Thu'),
      ColumnSeries<KpiNoQuaHan, String>(
          dataSource: _list,
          width: isCardView ? 0.8 : _columnWidth,
          spacing: isCardView ? 0.2 : _columnSpacing,
          color: const Color.fromRGBO(237, 125, 49, 1),
          xValueMapper: (KpiNoQuaHan sales, _) => sales.tenMuaVu as String,
          yValueMapper: (KpiNoQuaHan sales, _) =>
              (sales.no! / currency).roundToDouble(),
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          name: 'Nợ'),
      LineSeries<KpiNoQuaHan, String>(
          dataSource: _list,
          yAxisName: 'yAxis1',
          dashArray: const <double>[5, 5, 3, 3],
          xValueMapper: (KpiNoQuaHan sales, _) => sales.tenMuaVu as String,
          yValueMapper: (KpiNoQuaHan sales, _) =>
              (sales.no! / sales.doanhThu!).roundToDouble(),
          name: 'Tỉ lệ',
          markerSettings: const MarkerSettings(isVisible: true),
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            useSeriesColor: true,
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            alignment: _chartAlignment!,
            labelAlignment: _labelPosition!,
            offset: const Offset(0, 0),
          ))
    ];
  }

}
