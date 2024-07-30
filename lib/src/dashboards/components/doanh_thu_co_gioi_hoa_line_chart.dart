//doanh thu
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../model/sample_view.dart';
import '../../utils/app_widgets.dart';
import '../store/doanhsocogioihoa_store.dart';

class DoanhThuCoGioiHoaLineChart extends SampleView {
  /// Creates the column chart with columns width and space change option
  const DoanhThuCoGioiHoaLineChart(Key key, {super.data}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DoanhThuCoGioiHoaLineChartState createState() =>
      _DoanhThuCoGioiHoaLineChartState();
}

class _DoanhThuCoGioiHoaLineChartState extends SampleViewState {
  _DoanhThuCoGioiHoaLineChartState();

  late List<KpiDoanhSoCoGioiHoa> _data = [];
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
      var nganhGrouped =
          _data.groupListsBy((KpiDoanhSoCoGioiHoa obj) => obj.loaiDichVu);

      _listNganh = nganhGrouped.keys.whereNotNull().toList();
      currentNganh = _listNganh.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (needRefesh) {
      needRefesh = false;
      //data from api
      var kpiDto = KpiDoanhSoCoGioiHoaInputDto((b) => b
        ..maNhanVien3C = 'nv001'
        ..laToTruong3C = true);
      var store = DoanhSoCoGioiHoaStore(context: context)..fetchData(kpiDto);

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
          textStyle: const TextStyle(fontSize: 11)),
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
  List<LineSeries<KpiDoanhSoCoGioiHoa, DateTime>> _getDefaultLineSeries() {
    // var _list =
    //     _data.where((element) => element.nganh == currentNganh).toList();
    var list =
        _data.where((element) => element.loaiDichVu == currentNganh).toList();

    return <LineSeries<KpiDoanhSoCoGioiHoa, DateTime>>[
      LineSeries<KpiDoanhSoCoGioiHoa, DateTime>(
          animationDuration: 2500,
          dataSource: list,
          xValueMapper: (KpiDoanhSoCoGioiHoa sales, _) =>
              sales.ngay as DateTime,
          yValueMapper: (KpiDoanhSoCoGioiHoa sales, _) =>
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
      LineSeries<KpiDoanhSoCoGioiHoa, DateTime>(
          animationDuration: 2500,
          dataSource: list,
          width: 1,
          name: 'Kế hoạch',
          xValueMapper: (KpiDoanhSoCoGioiHoa sales, _) =>
              sales.ngay as DateTime,
          yValueMapper: (KpiDoanhSoCoGioiHoa sales, _) =>
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
