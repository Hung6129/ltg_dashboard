import 'package:flutter/material.dart';
import 'package:ltg_api/ltg_api.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'api/authentication/auth_service.dart';

/// local imports
import 'api/authentication/exceptions.dart';
import 'dashboards/store/kpi_dashboard_store.dart';
import 'model/helper.dart';
import 'model/sample_view.dart';
import 'model/model.dart';
import 'utils/app_widgets.dart';

enum ViewType { card, tab }

/// Root widget of the kpiDashboard browser
/// Contains the Homepage wrapped with a MaterialApp widget
class KpiDashboardBrowser extends StatefulWidget {
  final ViewType viewType;

  /// Creates kpiDashboard browser widget
  const KpiDashboardBrowser({super.key, this.viewType = ViewType.card});

  @override
  State<KpiDashboardBrowser> createState() => _KpiDashboardBrowserState();

  static void setAuthenticationToken(String accessToken) {
    setAuthToken(accessToken);
  }
}

class _KpiDashboardBrowserState extends State<KpiDashboardBrowser> {
  late KpiDashboardModel _kpiDashboardListModel;

  @override
  void initState() {
    _kpiDashboardListModel = KpiDashboardModel.instance;
    // _initializeProperties();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomePage(viewType: widget.viewType);
  }

  // void _initializeProperties() {
  //   final KpiDashboardModel model = KpiDashboardModel.instance;

  //   if (kIsWeb) {
  //     //model.isWeb = true;
  //   } else {
  //     model.isAndroid = Platform.isAndroid;
  //     model.isIOS = Platform.isIOS;
  //     model.isMobile = Platform.isAndroid || Platform.isIOS;
  //   }
  // }
}

/// Home page of the kpiDashboard browser for both mobile and web
class HomePage extends StatefulWidget {
  final ViewType viewType;

  /// creates the home page layout
  const HomePage({super.key, required this.viewType});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late KpiDashboardModel kpiDashboardListModel;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController controller = ScrollController();

  StateSetter? codeIconChangeSetState;
  StateSetter? infoIconChangeSetState;
  int _secondaryTabIndex = 0;
  dynamic currentKpiData;

  @override
  void initState() {
    kpiDashboardListModel = KpiDashboardModel.instance;
    _addColors();
    kpiDashboardListModel.addListener(_handleChange);
    super.initState();
  }

  ///Notify the framework by calling this method
  void _handleChange() {
    if (mounted) {
      setState(() {
        // The listenable's state was changed already.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final bool isMaxxSize = MediaQuery.of(context).size.width >= 1000;
    final KpiDashboardModel model = kpiDashboardListModel;
    model.isMobileResolution = (MediaQuery.of(context).size.width) < 768;
    try {
      var store = KpiDashboardStore(context: context)..fetchData();

      return Observer(builder: (context) {
        if (store.isBusy) {
          return Scaffold(body: loadingWidgetMaker().center());
        } else {
          final kpiList = store.dataItem;
          // init theme data
          kpiDashboardListModel.systemTheme = Theme.of(context);
          kpiDashboardListModel.currentThemeData ??=
              kpiDashboardListModel.systemTheme.brightness != Brightness.dark
                  ? ThemeData.from(
                      colorScheme: const ColorScheme.light().copyWith(
                          primary: kpiDashboardListModel.currentPaletteColor,
                          secondary: kpiDashboardListModel.currentPaletteColor))
                  : ThemeData.from(
                      colorScheme: const ColorScheme.dark().copyWith(
                          primary: kpiDashboardListModel.currentPaletteColor,
                          secondary: kpiDashboardListModel.currentPaletteColor,
                          onPrimary: Colors.white));
          kpiDashboardListModel
              .changeTheme(kpiDashboardListModel.currentThemeData!);

          return SafeArea(
              child: model.isMobileResolution
                  ? Scaffold(
                      resizeToAvoidBottomInset: false,
                      key: scaffoldKey,
                      backgroundColor: model.webBackgroundColor,
                      body: Column(children: <Widget>[
                        SizedBox(
                            height: widget.viewType == ViewType.tab
                                ? 450
                                : 300, // constrain height
                            child: widget.viewType == ViewType.tab
                                ? _getTabView(kpiList, model)
                                : _getKpiDashboard(kpiList, model, 'card'))
                      ]))
                  : Scaffold(
                      // bottomNavigationBar: getFooter(context, model),
                      key: scaffoldKey,
                      backgroundColor: model.webBackgroundColor,
                      // endDrawerEnableOpenDragGesture: false,
                      // endDrawer: showWebThemeSettings(model),
                      resizeToAvoidBottomInset: false,
                      body: widget.viewType == ViewType.tab
                          ? _getTabView(kpiList, model)
                          : _getKpiDashboard(kpiList, model, 'card')));
        }
      });
    } catch (ex) {
      var message = "Có lỗi khi lấy dữ liệu KPI";
      if (ex is TokenInvalidException) {
        message = "Bạn không có quyền truy cập dữ liệu KPI";
      }
      return Container(
          width: MediaQuery.of(context).size.width * .99,
          color: model.currentThemeData?.brightness == Brightness.dark
              ? Colors.black
              : const Color.fromRGBO(250, 250, 250, 1),
          padding: const EdgeInsets.all(5.0),
          child: Card(
              elevation: 2,
              color: model.cardThemeColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: SizedBox(
                  width: double.infinity,
                  height: 270,
                  child: Center(
                      child: Text(
                    message,
                    textAlign: TextAlign.center,
                  )),
                ),
              )));
    }
  }

  /// Add the palette colors
  void _addColors() {
    kpiDashboardListModel.paletteColors = <Color>[
      const Color.fromRGBO(0, 116, 227, 1),
      const Color.fromRGBO(230, 74, 25, 1),
      const Color.fromRGBO(216, 27, 96, 1),
      const Color.fromRGBO(103, 58, 184, 1),
      const Color.fromRGBO(2, 137, 123, 1)
    ];
    kpiDashboardListModel.darkPaletteColors = <Color>[
      const Color.fromRGBO(68, 138, 255, 1),
      const Color.fromRGBO(255, 110, 64, 1),
      const Color.fromRGBO(238, 79, 132, 1),
      const Color.fromRGBO(180, 137, 255, 1),
      const Color.fromRGBO(29, 233, 182, 1)
    ];
    kpiDashboardListModel.paletteBorderColors = <Color>[
      const Color.fromRGBO(0, 116, 227, 1),
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent
    ];
  }

  /// Get the samples based on display type
  Widget _getKpiDashboard(List<KpiDashboard> list, KpiDashboardModel model,
          String? displayType) =>
      displayType == 'card'
          ? _getCardViewKpiDashboard(list, model)
          : Container(); // _getFullViewSamples(model, list);

  /// To displaying sample in cards, it contains expanded sample view option.
  Widget _getCardViewKpiDashboard(
      List<KpiDashboard> list, KpiDashboardModel model) {
    // List<Item> list = model.kpiDashboardList;
    Function dashboardWidget;
    SampleView dashboardView;

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        cacheExtent: (list.length).toDouble(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int position) {
          // final String? status = list[position].status;
          // get mapping function to load specific widget
          dashboardWidget = model.kpiDashboardWidget[list[position].key]!;
          dashboardView =
              dashboardWidget(GlobalKey<State>(), data: list[position].data)
                  as SampleView;
          return Container(
            width: MediaQuery.of(context).size.width * .99,
            color: model.themeData.colorScheme.brightness == Brightness.dark
                ? Colors.black
                : const Color.fromRGBO(250, 250, 250, 1),
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  elevation: 2,
                  color: model.cardThemeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.grey.withOpacity(0.4),
                        onTap: () {
                          Feedback.forLongPress(context);
                          onTapExpandKpiDashboard(
                              context, list[position], model);
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  list[position].title!,
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  textScaleFactor: 1,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      // fontFamily: 'Montserrat',
                                      fontSize: 11.0,
                                      color: model.textColor,
                                      letterSpacing: 0.2),
                                ),
                                Row(
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                    ),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      color: Colors.transparent,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 5),
                                        child: Image.asset(
                                            './lib/images/fullscreen.png',
                                            package:
                                                'ltg_dashboard',
                                            fit: BoxFit.contain,
                                            height: 20,
                                            width: 20,
                                            color: model.backgroundColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(0.0), //.fromLTRB(5, 5, 5, 5),
                        child: SizedBox(
                            // color: Colors.black,
                            width: double.infinity,
                            height: 210,
                            child: dashboardView),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  /// If child type given to control subitems.
  Widget _getTabView(List<KpiDashboard> kpis, KpiDashboardModel model) {
    // var list = model.kpiDashboardList;
    return DefaultTabController(
      length: kpis.length,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(46.1),
              child: AppBar(
                backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
                bottom: TabBar(
                  onTap: (int index) {
                    if (_secondaryTabIndex != index &&
                        codeIconChangeSetState != null) {
                      codeIconChangeSetState!(() {
                        _secondaryTabIndex = index;
                        currentKpiData = kpis[index];
                        infoIconChangeSetState!(() {});
                      });
                    }
                  },
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  indicatorColor: Colors.transparent,
                  indicatorWeight: 0.1,
                  isScrollable: true,
                  tabs: _getTabs(kpis),
                ),
              )),
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: _getDashboards(kpis, model, 'card'))),
    );
  }

  /// Get the samples based on display type
  List<Widget> _getDashboards(List<KpiDashboard> list, KpiDashboardModel model,
          String? displayType) =>
      displayType == 'card'
          ? _getCardViewSamples(list, model)
          : _getFullViewSamples(list, model);

  /// Get tabs which length is equal to list length
  List<Widget> _getTabs(List<KpiDashboard> list, [String? tabView]) {
    final List<Widget> tabs = <Widget>[];
    // String status;
    for (int i = 0; i < list.length; i++) {
      if (list.isNotEmpty) {
        // status = getStatusTag(list[i]);
        tabs.add(Tab(
            child: Row(
          children: <Widget>[
            SizedBox(
              width: 135,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(LineIcons.pie_chart),
                  SizedBox(
                      width: 100,
                      child: Text(list[i].title.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: tabView != 'parent'
                              ? const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.normal)
                              : const TextStyle(
                                  fontSize: 12, color: Colors.white)))
                ],
              ),
            ),
          ],
        )));
      }
    }
    return tabs;
  }

  /// To displaying sample in full screen height,
  /// it doesn't contains expanded view.
  List<Widget> _getFullViewSamples(
      List<KpiDashboard> list, KpiDashboardModel model) {
    final List<Widget> tabs = <Widget>[];
    KpiDashboard dashboardDetail;
    for (int j = 0; j < list.length; j++) {
      dashboardDetail = list[j];
      final Function? dashboardWidget = model.kpiDashboardWidget[list[j].key];
      final SampleView dashboardView =
          dashboardWidget!(GlobalKey<State>(), data: dashboardDetail.data)
              as SampleView;

      tabs.add(
        Scaffold(
          backgroundColor: model.cardThemeColor,
          body: dashboardView,
        ),
      );
    }

    return tabs;
  }

  /// To displaying sample in cards, it contains expanded sample view option.
  List<Widget> _getCardViewSamples(
      List<KpiDashboard> list, KpiDashboardModel model) {
    final List<Widget> tabChildren = <Widget>[];
    Function dashboardWidget;
    SampleView dashboardView;
    for (int i = 0; i < list.length; i++) {
      tabChildren.add(ListView.builder(
          cacheExtent: (list.length).toDouble(),
          itemCount: 1,
          itemBuilder: (BuildContext context, int position) {
            // final String? status = list[i].status;
            dashboardWidget = model.kpiDashboardWidget[list[i].key]!;
            dashboardView =
                dashboardWidget(GlobalKey<State>(), data: list[i].data)
                    as SampleView;

            return Container(
              color: model.themeData.colorScheme.brightness == Brightness.dark
                  ? Colors.black
                  : const Color.fromRGBO(250, 250, 250, 1),
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Card(
                    elevation: 2,
                    color: model.cardThemeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          splashColor: Colors.grey.withOpacity(0.4),
                          onTap: () {
                            Feedback.forLongPress(context);
                            onTapExpandKpiDashboard(context, list[i], model);
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    list[i].title!,
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    textScaleFactor: 1,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        // fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        color: model.textColor,
                                        letterSpacing: 0.2),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15),
                                      ),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 0, 5, 5),
                                          child: Image.asset(
                                              './lib/images/fullscreen.png',
                                              package:
                                                  'ltg_dashboard',
                                              fit: BoxFit.contain,
                                              height: 20,
                                              width: 20,
                                              color: model.backgroundColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 15, 5),
                          child: SizedBox(
                              width: double.infinity,
                              height: 270,
                              child: dashboardView),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }));
    }

    return tabChildren;
  }

  /// On tap the expand button, get the fullview sample.
  void onTapExpandKpiDashboard(
      BuildContext context, KpiDashboard subItem, KpiDashboardModel model) {
    model.isCardView = false;
    final Function dashboardWidget = model.kpiDashboardWidget[subItem.key]!;
    final SampleView dashboardView =
        dashboardWidget(GlobalKey<State>(), data: subItem.data) as SampleView;
    Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => _FullViewKpiDashboardLayout(
                  model: model,
                  dashboardWidget: dashboardView,
                  kpiDashboard: subItem,
                )));

    //ignore: invalid_use_of_protected_member
    model.notifyListeners();
  }
}

///On expanding sample, full view sample layout renders
class _FullViewKpiDashboardLayout extends StatelessWidget {
  const _FullViewKpiDashboardLayout(
      {this.kpiDashboard, this.dashboardWidget, required this.model});
  final KpiDashboard? kpiDashboard;
  final Widget? dashboardWidget;
  final KpiDashboardModel model;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => SafeArea(
            child: kpiDashboard == null
                ? Container()
                : Theme(
                    data: model.themeData,
                    child: Scaffold(
                      resizeToAvoidBottomInset: false,
                      backgroundColor: model.paletteColor,
                      appBar: PreferredSize(
                          preferredSize: const Size.fromHeight(60.0),
                          child: AppBar(
                            title: Text(kpiDashboard!.title!),
                            actions: (kpiDashboard!.description != null &&
                                    kpiDashboard!.description != '')
                                ? <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 0),
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: IconButton(
                                          icon: const Icon(Icons.info_outline,
                                              color: Colors.white),
                                          onPressed: () {
                                            showBottomInfo(context,
                                                kpiDashboard!.description!);
                                          },
                                        ),
                                      ),
                                    ),
                                  ]
                                : null,
                            elevation: 0.0,
                            backgroundColor: model.backgroundColor,
                            titleSpacing: NavigationToolbar.kMiddleSpacing,
                          )),
                      body: Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(12)),
                              color: model.cardThemeColor),
                          padding: EdgeInsets.zero,
                          child: Container(child: dashboardWidget)),
                    ))));
  }
}
