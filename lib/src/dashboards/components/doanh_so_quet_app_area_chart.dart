import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:nb_utils/nb_utils.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/sample_view.dart';
import '../../utils/app_widgets.dart';
import '../store/doanhsoquetapp_store.dart';

class DoanhSoQuetAppAreaDefault extends SampleView {
  /// Creates the column chart with columns width and space change option
  const DoanhSoQuetAppAreaDefault(Key key, {super.data}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DoanhSoQuetAppAreaDefaultState createState() =>
      _DoanhSoQuetAppAreaDefaultState();
}

/// State class of the default area chart.
class _DoanhSoQuetAppAreaDefaultState extends State<DoanhSoQuetAppAreaDefault> {
  _DoanhSoQuetAppAreaDefaultState();

  late double _horizontalPaddding;
  late double _verticalPaddding;
  late double _columnWidth;
  late double _columnSpacing;
  ChartData? _chartData;
  final String _chartTile = "Doanh số quét app";
  TooltipBehavior? _tooltipBehavior;
  ChartAlignment? _chartAlignment;
  ChartDataLabelAlignment? _labelPosition;
  late bool isCardView;
  bool needRefesh = true;
  late List<KpiDoanhSoQuetApp> _data = [];
  var currencyM = 10000000.0; // triệu
  var currencyB = 1000000000.0; // tỷ
  late double currency = currencyM;

  @override
  void initState() {
    isCardView = true;
    //_chartData = widget.chartData;
    //_chartTile = widget.chartTitle;
    _columnWidth = 0.8;
    _columnSpacing = 0.2;
    _tooltipBehavior = TooltipBehavior(enable: true);
    _chartAlignment = ChartAlignment.center;
    _labelPosition = ChartDataLabelAlignment.top;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (needRefesh) {
      // data from api
      var kpiDto = KpiDoanhSoQuetAppInputDto((b) => b
        ..maNhanVien3C = 'nv001'
        ..laToTruong3C = true);
      final store = DoanhSoQuetAppStore(context: context)..fetchData(kpiDto);

      return Observer(builder: (context) {
        if (store.isBusy) {
          return Scaffold(body: loadingWidgetMaker().center());
        } else {
          _data = store.dataItem;
        }
        if (_data.firstWhereOrNull((element) => element.keHoach! > currencyB) !=
            null) {
          currency = currencyB;
        }

        needRefesh = false;

        return _buildDefaultAreaChart();
      });
    } else {
      return _buildDefaultAreaChart();
    }
  }

  /// Returns the default cartesian area chart.
  SfCartesianChart _buildDefaultAreaChart() {
    return SfCartesianChart(
      legend: Legend(
          isVisible: !isCardView,
          overflowMode: LegendItemOverflowMode.wrap,
          position: LegendPosition.bottom,
          opacity: 0.7,
          textStyle: const TextStyle(fontSize: 11)),
      title: ChartTitle(text: _chartTile),
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
      primaryYAxis: NumericAxis(
          labelFormat: '{value}',
          title: AxisTitle(text: _chartTile),
          interval: 1,
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0)),
      series: _getDefaultAreaSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  /// Returns the list of Chart series
  /// which need to render on the default area chart.
  List<CartesianSeries<KpiDoanhSoQuetApp, DateTime>> _getDefaultAreaSeries() {
    var dataList = _data.toList();
    return <CartesianSeries<KpiDoanhSoQuetApp, DateTime>>[
      AreaSeries<KpiDoanhSoQuetApp, DateTime>(
          dataSource: dataList,
          opacity: 1,
          name: 'Thực hiện LK',
          color: const Color.fromRGBO(112, 173, 71, 1),
          xValueMapper: (KpiDoanhSoQuetApp sales, _) => sales.ngay as DateTime,
          yValueMapper: (KpiDoanhSoQuetApp sales, _) =>
              (sales.keHoach!).roundToDouble(),
          dataLabelSettings: const DataLabelSettings(isVisible: true)),
      AreaSeries<KpiDoanhSoQuetApp, DateTime>(
          dataSource: dataList,
          opacity: 1,
          name: 'Kế hoạch LK',
          color: const Color.fromRGBO(191, 144, 0, 1),
          xValueMapper: (KpiDoanhSoQuetApp sales, _) => sales.ngay as DateTime,
          yValueMapper: (KpiDoanhSoQuetApp sales, _) =>
              (sales.thucTe!).roundToDouble(),
          dataLabelSettings: const DataLabelSettings(isVisible: true)),
      LineSeries<KpiDoanhSoQuetApp, DateTime>(
          dataSource: dataList,
          yAxisName: 'yAxis1',
          //dashArray: <double>[5, 5, 3, 3],
          xValueMapper: (KpiDoanhSoQuetApp sales, _) => sales.ngay as DateTime,
          yValueMapper: (KpiDoanhSoQuetApp sales, _) => num.parse(
              ((sales.thucTe! / sales.keHoach!) * 100).toStringAsFixed(2)),
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

  @override
  void dispose() {
    //_chartData!.clear();
    super.dispose();
  }
}
