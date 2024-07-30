import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Local import
import '../kpi_dashboard_list.dart';

/// Contains the detail of sample in different hierarchy levels
/// parent, child, sample types
class Item<T> {
  /// It holds the type, title, key, description etc., of the sample
  Item(
      [this.type,
      this.displayType,
      this.title,
      this.key,
      this.codeLink,
      this.description,
      this.status,
      this.subItems,
      this.sourceLink,
      this.sourceText,
      this.needsPropertyPanel,
      this.platformsToHide,
      this.data]);

  /// Getting the SubItem details from the json file
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        json['type'],
        json['displayType'],
        json['title'],
        json['key'],
        json['codeLink'],
        json['description'],
        json['status'],
        json['subItems'],
        json['sourceLink'],
        json['sourceText'],
        json['needsPropertyPanel'],
        json['platformsToHide'],
        json['data']);
  }

  /// Type given as parent/child/sample.
  /// if "parent" is given then primary tab and secondary tab both come.
  /// for "parent", "child" type must be give to subItems(next hierarchy).
  /// if "child" is given only primary tab will come.
  /// if "sample" is given no tab will come.
  /// by default it taken as "sample".
  /// Note: In all cases displayType is given as "fullView",
  /// additionally sample's tab will come.
  final String? type;

  /// Mention the samples layout.
  /// displayType given as card/fullView.
  /// by default it taken as "fullView".
  /// Note: Need to mention this when on display type is child.
  final String? displayType;

  /// Need to mention in all type.
  final String? title;

  /// Below values need to give when type is "sample".
  final String? key;

  /// Contains Github sample link
  final String? codeLink;

  /// Contains the description of the sample
  /// to be displayed in the sample backpanel
  final String? description;

  /// Status of the sample, displays above the sample
  final String? status;

  /// SourceLink which will launch a url of the sample's source
  /// on tapping source text present under the sample.
  final String? sourceLink;

  /// Short form of the source link which will displays under the sample.
  final String? sourceText;

  /// No need to give when type is "sample".
  List<dynamic>? subItems;

  /// If current sample has property panel mention true.
  final bool? needsPropertyPanel;

  /// Contains appropriate category name
  String? categoryName;

  ///Holds the URL text
  String? breadCrumbText;

  ///Current parent subItem index
  int? parentIndex;

  ///Current child subItem index
  int? childIndex;

  ///Current child subItem index
  int? sampleIndex;

  T? data;

  /// To specify the sample not to show on the web/android/iOS/windows/linux/macOS
  /// platforms in list format.
  ///
  /// Eg: In json file we can specify like below,
  ///
  /// "platformsToHide": ["linux", "android"] => the specific sample should not show on the linux and android platforms
  final List<dynamic>? platformsToHide;
}

/// SampleModel class is the base of the Sample browser
/// It contains the category, control, theme information
class KpiDashboardModel extends Listenable {
  /// Contains the category, control, theme information
  KpiDashboardModel() {
    isInitialRender = true;
    kpiDashboardList = KpiDashboardModel._kpiDashboardList;
    routes = KpiDashboardModel._routes;
  }

  /// Used to create the instance of [KpiDashboardModel]
  /// TODO: Must implement with API request.
  static KpiDashboardModel instance = KpiDashboardModel();

  /// Specifies the widget initial rendering
  late bool isInitialRender;

  /// Contains the output widget of sample
  /// appropriate key and output widget mapped
  final Map<String, Function> kpiDashboardWidget = getKpiDashboardWidget();

  ///List of all the samples
  late List<Item> kpiDashboardList;

  static final List<Item> _kpiDashboardList = <Item>[];

  /// holds theme based current palette color
  Color backgroundColor = const Color.fromRGBO(0, 116, 227, 1);

  /// holds light theme current palette color
  Color paletteColor = const Color.fromRGBO(0, 116, 227, 1);

  /// holds current palette color
  /// on toggling the palette colors before or after apply settings
  Color currentPrimaryColor = const Color.fromRGBO(0, 116, 227, 1);

  /// holds the current theme data
  late ThemeData themeData;

  /// Holds theme baased color of web outputcontainer
  Color textColor = const Color.fromRGBO(51, 51, 51, 1);

  /// Holds theme based drawer text color
  Color drawerTextIconColor = Colors.black;

  /// Holds theme based bottom sheet color
  Color bottomSheetBackgroundColor = Colors.white;

  /// Holds theme based card color
  Color cardThemeColor = Colors.white;

  /// Holds theme based web page background color
  Color webBackgroundColor = const Color.fromRGBO(246, 246, 246, 1);

  /// Holds theme based color of icon
  Color webIconColor = const Color.fromRGBO(0, 0, 0, 0.54);

  /// Holds theme based input container color
  Color webInputColor = const Color.fromRGBO(242, 242, 242, 1);

  /// Holds theme based web outputcontainer color
  Color webOutputContainerColor = Colors.white;

  /// Holds the theme based card's color
  Color cardColor = Colors.white;

  /// Holds the theme based divider color
  Color dividerColor = const Color.fromRGBO(204, 204, 204, 1);

  /// Holds the old browser window's height and width
  Size? oldWindowSize;

  /// Holds the current browser window's height and width
  late Size currentWindowSize;

  static final List<SampleRoute> _routes = <SampleRoute>[];

  /// List of navigation routes text and appropriate subitem
  late List<SampleRoute>? routes;

  /// Holds the current visible sample, only for web
  late dynamic currentRenderSample;

  /// Holds the current rendered sample's key, only for web
  late String? currentSampleKey;

  /// Contains the light theme pallete colors
  late List<Color>? paletteColors;

  /// Contains the pallete's border colors
  late List<Color>? paletteBorderColors;

  /// Contains dark theme theme palatte colors.
  late List<Color>? darkPaletteColors;

  /// Holds current theme data
  ThemeData? currentThemeData;

  /// Holds current pallete color
  Color currentPaletteColor = const Color.fromRGBO(0, 116, 227, 1);

  /// holds the index to finding the current theme
  /// In mobile sb - system 0, light 1, dark 2
  int selectedThemeIndex = 0;

  /// Holds the information of isCardView or not
  bool isCardView = true;

  /// Gets the locale assigned to [KpiDashboardModel].
  Locale? locale = const Locale('vi', 'VN');

  /// Gets the textDirection assigned to [KpiDashboardModel].
  TextDirection textDirection = TextDirection.rtl;

  /// Holds the information of isMobileResolution or not
  /// To render the appbar and search bar based on it
  late bool isMobileResolution;

  /// Holds the current system theme
  late ThemeData systemTheme;

  /// Editing controller which used in the search text field
  TextEditingController editingController = TextEditingController();

  /// Key of the property panel widget
  late GlobalKey<State> propertyPanelKey;

  /// Holds the information of to be maximize or not
  bool needToMaximize = false;

  ///Storing state of current output container
  late dynamic outputContainerState;

  ///Storing state of web output container
  // late SampleOutputContainerState webOutputContainerState;

  ///Check whether application is running on a mobile device
  bool isMobile = false;

  ///Check whether application is running on the Android mobile device
  bool isAndroid = false;

  ///Check whether application is running on the iOS mobile device
  bool isIOS = false;

  /// This controls to open / hide the property panel
  bool isPropertyPanelOpened = true;

  /// holds the current route of sample.
  late SampleRoute currentSampleRoute;

  /// Hold the current sample details.
  late Item sampleDetail;

  /// holds the collection of all sample routes.
  static List<SampleRoute> sampleRoutes = <SampleRoute>[];

  /// Holds the value whether the property panel option is tapped
  late bool isPropertyPanelTapped;

  /// Switching between light, dark, system themes
  void changeTheme(ThemeData currentThemeData) {
    themeData = currentThemeData;
    switch (currentThemeData.colorScheme.brightness) {
      case Brightness.dark:
        {
          dividerColor = const Color.fromRGBO(61, 61, 61, 1);
          cardColor = const Color.fromRGBO(48, 48, 48, 1);
          webIconColor = const Color.fromRGBO(255, 255, 255, 0.65);
          webOutputContainerColor = const Color.fromRGBO(23, 23, 23, 1);
          webInputColor = const Color.fromRGBO(44, 44, 44, 1);
          webBackgroundColor = const Color.fromRGBO(33, 33, 33, 1);
          drawerTextIconColor = Colors.white;
          bottomSheetBackgroundColor = const Color.fromRGBO(34, 39, 51, 1);
          textColor = const Color.fromRGBO(242, 242, 242, 1);
          cardThemeColor = const Color.fromRGBO(33, 33, 33, 1);
          break;
        }
      // ignore: no_default_cases
      default:
        {
          dividerColor = const Color.fromRGBO(204, 204, 204, 1);
          cardColor = Colors.white;
          webIconColor = const Color.fromRGBO(0, 0, 0, 0.54);
          webOutputContainerColor = Colors.white;
          webInputColor = const Color.fromRGBO(242, 242, 242, 1);
          webBackgroundColor = const Color.fromRGBO(246, 246, 246, 1);
          drawerTextIconColor = Colors.black;
          bottomSheetBackgroundColor = Colors.white;
          textColor = const Color.fromRGBO(51, 51, 51, 1);
          cardThemeColor = Colors.white;
          break;
        }
    }
  }

  //ignore: prefer_collection_literals
  final Set<VoidCallback> _listeners = Set<VoidCallback>();
  @override

  /// [listener] will be invoked when the model changes.
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  @override

  /// [listener] will no longer be invoked when the model changes.
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  /// Should be called only by [Model] when the model has changed.
  @protected
  void notifyListeners() {
    _listeners.toList().forEach((VoidCallback listener) => listener());
  }
}

// /// Get the control details category wise, by parsing ['../../model/sample]
// /// Then store the details in [KpiDashboardModel._categoryList]
// /// and [KpiDashboardModel._controlList]
// Future<void> updateControlItems() async {
//   if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
//     await DesktopWindow.setMinWindowSize(const Size(775, 230));
//   }

//   final bool isWeb =
//       kIsWeb || Platform.isWindows || Platform.isMacOS || Platform.isLinux;
//   final String jsonText = await rootBundle.loadString('lib/mock_data.json');
//   final List<SampleRoute> sampleRoutes = <SampleRoute>[]; // not use

//   final List<dynamic> items = json.decode(jsonText) as List<dynamic>;

//   for (int i = 0; i < items.length; i++) {
//     KpiDashboardModel._kpiDashboardList.add(new Item.fromJson(items[i]));
//   }

//   KpiDashboardModel._routes = sampleRoutes;
// }

bool _needToShow(List<dynamic>? platforms) {
  return !((platforms!.contains('web') && kIsWeb) ||
      (!kIsWeb &&
          ((platforms.contains('linux') && Platform.isLinux) ||
              (platforms.contains('android') && Platform.isAndroid) ||
              (platforms.contains('iOS') && Platform.isIOS) ||
              (platforms.contains('windows') && Platform.isWindows) ||
              (platforms.contains('macOS') && Platform.isMacOS))));
}

///Holds the [Item] and the appropriate route name
class SampleRoute {
  ///Contains the URL routes of the appropriate subItem
  SampleRoute(
      {this.routeName,
      this.subItem,
      this.currentContext,
      this.currentState,
      this.currentWidget,
      this.globalKey});

  ///Holds the sample details
  final Item? subItem;

  ///Holds the global key
  final GlobalKey<State>? globalKey;

  ///Holds the text which show in the URL
  String? routeName;

  ///Holds the current state
  State? currentState;

  ///Holds the current context
  BuildContext? currentContext;

  ///Holds the current widget
  Widget? currentWidget;
}
