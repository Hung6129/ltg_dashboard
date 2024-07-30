import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../api/model/mua_vu.dart';
import '../../model/sample_view.dart';
import '../../utils/app_widgets.dart';
import '../store/dientichlienketsanxuat_store.dart';

/// Renders the gauge text pointer sample
class DienTichLKSXGaugePointer extends SampleView {
  /// Creates the gauge text pointer sample
  const DienTichLKSXGaugePointer(Key key, {super.data}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GaugePointer1State createState() => _GaugePointer1State();
}

class _GaugePointer1State extends SampleViewState {
  _GaugePointer1State();

  late var data = <KpiDienTichLienKetSanXuat>[];
  late KpiDienTichLienKetSanXuat? currentData;
  late List<MuaVu> _listMuaVu;
  late MuaVu?
      currentMuaVu; // = _listMuaVu.firstWhere((element) => element.hienHanh == true);

  bool needRefesh = true;

  @override
  void initState() {
    super.initState();

    // _bindData();
    data = <KpiDienTichLienKetSanXuat>[];
    _listMuaVu = <MuaVu>[];
    currentMuaVu = null;
    currentData = null;
  }

  // void _bindData() {
  //   data = <DienTichLienKetSanXuat>[];
  //   _listMuaVu = <MuaVu>[];
  //   currentMuaVu = null;
  //   currentData = null;
  //   if (widget.data != null) {
  //     var list = List.from(widget.data as List);
  //     for (int i = 0; i < list.length; i++) {
  //       DienTichLienKetSanXuat item = DienTichLienKetSanXuat.fromJson(list[i]);
  //       data!.add(item);
  //       _listMuaVu.add(MuaVu.fromDienTichLienKetSanXuat(item));
  //     }
  //     currentMuaVu =
  //         _listMuaVu.firstWhere((element) => element.hienHanh == true);
  //     currentData = data!.firstWhere((element) => element.hienHanh = true);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    if (needRefesh) {
      needRefesh = false;
      KpiDienTichLienKetSanXuatInputDto kpiDto =
          KpiDienTichLienKetSanXuatInputDto((b) => b
            ..maNhanVien3C = 'nv001'
            ..laToTruong3C = true
            ..soMuaVu = 3);

      final store = DienTichLienKetSanXuatStore(context: context)
        ..fetchData(kpiDto);
      return Observer(builder: (context) {
        if (store.isBusy) {
          return Scaffold(body: loadingWidgetMaker().center());
        } else {
          data = store.dataItem;

          // _listMuaVu = <MuaVu>[];
          // currentMuaVu = null;
          // currentData = null;

          // _bindData();
          if (data.length > 0) {
            for (int i = 0; i < data.length; i++) {
              var muaVu = MuaVu.fromDienTichLienKetSanXuat(data[i]);
              if (!_listMuaVu
                  .any((element) => element.maMuaVu == muaVu.maMuaVu)) {
                _listMuaVu.add(muaVu);
              }
            }

            if (currentMuaVu == null) {
              currentMuaVu =
                  _listMuaVu.firstWhere((element) => element.hienHanh == true);
            } else {
              currentMuaVu = _listMuaVu.firstWhere(
                  (element) => element.maMuaVu == currentMuaVu!.maMuaVu);
            }

            if (currentData == null) {
              currentData =
                  data!.firstWhere((element) => element.hienHanh == true);
            } else {
              currentData = data!.firstWhere(
                  (element) => element.maMuaVu == currentData!.maMuaVu);
            }
          }
          return _buildDashboard();
        }
      });
    } else {
      return _buildDashboard();
    }
  }

  Widget _buildDashboard() {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
          child: Column(
              // fit: StackFit.expand,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DropdownButton<MuaVu>(
                        underline: Container(
                            color: const Color(0xFFBDBDBD), height: 1),
                        value: currentMuaVu,
                        items: _listMuaVu.map((MuaVu value) {
                          return DropdownMenuItem<MuaVu>(
                              value: value,
                              child: Text(value.tenMuaVu!,
                                  style: TextStyle(
                                      color: model.textColor, fontSize: 11)));
                        }).toList(),
                        onChanged: (MuaVu? value) {
                          setState(() {
                            currentMuaVu = value!;
                            currentData = data.firstWhere(
                                (element) => element.maMuaVu == value.maMuaVu);
                          });
                        }),
                  ],
                ),
                Expanded(
                  child: _buildRadialTextPointer(),
                )
              ])),
    )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  /// Returns the text pointer gauge
  SfRadialGauge _buildRadialTextPointer() {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
            showAxisLine: false,
            showLabels: false,
            showTicks: false,
            startAngle: 180,
            endAngle: 360,
            maximum: 100,
            canScaleToFit: true,
            radiusFactor: 0.79,
            pointers: <GaugePointer>[
              // MarkerPointer(
              //     text: (currentData?.percent ?? 0).toStringAsFixed(2) + '%',
              //     value: currentData?.percent ?? 0,
              //     elevation: 4,
              //     markerWidth: 25,
              //     markerHeight: 25,
              //     color: Colors.black, // const Color(0xFFF67280),
              //     markerType: MarkerType.invertedTriangle,
              //     markerOffset: -7),
              NeedlePointer(
                  needleEndWidth: 5,
                  needleLength: 0.7,
                  value: getPercent(currentData),
                  knobStyle: const KnobStyle(knobRadius: 0)),
            ],
            annotations: <GaugeAnnotation>[
              // GaugeAnnotation(
              //     angle: 175,
              //     positionFactor: 0.8,
              //     widget: Text('0',
              //         style: TextStyle(
              //             fontSize: isCardView ? 10 : 11,
              //             fontWeight: FontWeight.normal))),
              GaugeAnnotation(
                angle: 90,
                positionFactor: 0.15,
                widget: Text('${getPercent(currentData).toStringAsFixed(2)}%',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: isCardView ? 12 : 14,
                        fontWeight: FontWeight.bold)),
              ),
              // GaugeAnnotation(
              //   angle: 90,
              //   positionFactor: 0.25,
              //   widget: Text(
              //       (currentData?.thucTe ?? 0).toStringAsFixed(2), // + ' ha',
              //       style: TextStyle(
              //           // color: Colors.green,
              //           fontSize: isCardView ? 10 : 11,
              //           fontWeight: FontWeight.normal)),
              // ),
              // GaugeAnnotation(
              //     angle: 5,
              //     positionFactor: 0.8,
              //     widget: Text(
              //         (currentData?.keHoach.toStringAsFixed(2) ??
              //             '?'), // + ' ha',
              //         style: TextStyle(
              //             fontSize: isCardView ? 10 : 11,
              //             fontWeight: FontWeight.normal))),
              GaugeAnnotation(
                angle: 90,
                positionFactor: 0.35,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        'Thực tế: ${(currentData?.thucTe ?? 0).toStringAsFixed(2)} ha',
                        style: TextStyle(
                            // color: Colors.green,
                            fontSize: isCardView ? 12 : 14,
                            fontWeight: FontWeight.normal)),
                    Text(
                        'Kế hoạch: ${(currentData?.keHoach ?? 0).toStringAsFixed(2)} ha',
                        style: TextStyle(
                            // color: Colors.green,
                            fontSize: isCardView ? 12 : 14,
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: 0,
                  endValue: 25,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  color: const Color(0xFFDD3800)),
              GaugeRange(
                  startValue: 25.1,
                  endValue: 75,
                  startWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  endWidth: 0.45,
                  color: const Color(0xFFFFBA00)),
              GaugeRange(
                  startValue: 75.1,
                  endValue: 100,
                  startWidth: 0.45,
                  endWidth: 0.45,
                  sizeUnit: GaugeSizeUnit.factor,
                  color: const Color(0xFF64BE00)),
            ]),
        // RadialAxis(
        //   showAxisLine: false,
        //   showLabels: false,
        //   showTicks: false,
        //   startAngle: 180,
        //   endAngle: 360,
        //   maximum: 120,
        //   radiusFactor: 0.85,
        //   canScaleToFit: true,
        //   pointers: <GaugePointer>[
        //     MarkerPointer(
        //         markerType: MarkerType.text,
        //         text: 'Thấp',
        //         value: 15.0,
        //         textStyle: GaugeTextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: isCardView ? 14 : 18,
        //             fontFamily: 'Montserrat'),
        //         offsetUnit: GaugeSizeUnit.factor,
        //         markerOffset: -0.12),
        //     MarkerPointer(
        //         markerType: MarkerType.text,
        //         text: 'Trung bình',
        //         value: 59,
        //         textStyle: GaugeTextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: isCardView ? 14 : 18,
        //             fontFamily: 'Montserrat'),
        //         offsetUnit: GaugeSizeUnit.factor,
        //         markerOffset: -0.12),
        //     MarkerPointer(
        //         markerType: MarkerType.text,
        //         text: 'Cao',
        //         value: 100,
        //         textStyle: GaugeTextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: isCardView ? 14 : 18,
        //             fontFamily: 'Montserrat'),
        //         offsetUnit: GaugeSizeUnit.factor,
        //         markerOffset: -0.12)
        //   ],
        // ),
      ],
    );
  }

  double getPercent(currentData) {
    var percent = (currentData?.keHoach != null && currentData!.keHoach! > 0)
        ? (currentData?.thucTe / currentData!.keHoach!)
        : 0.0;
    return percent * 100;
  }
}
