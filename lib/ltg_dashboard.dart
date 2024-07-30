library ltg_dashboard;

import 'package:nb_utils/nb_utils.dart' as nbu;
import 'src/api/config/config.dart';
export 'src/kip_dashboard_browser.dart';

Future<void> init({required DashboardOptions options}) async {
  baseUrl = options.baseUrl;

  // nb_utils
  await nbu.initialize(aLocaleLanguageList: [
    // LanguageDataModel(name: 'English', languageCode: 'en'),
    nbu.LanguageDataModel(name: 'Tiếng Việt', languageCode: 'vi'),
  ]);

  // await updateControlItems();
}

class DashboardOptions {
  DashboardOptions({
    this.baseUrl = '',
  });
  late String baseUrl;
}
