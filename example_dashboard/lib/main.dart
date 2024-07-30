import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ltg_dashboard/ltg_dashboard.dart' as ltgdashboard;

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..maxConnectionsPerHost = 5
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await ltgdashboard.init(
      options: ltgdashboard.DashboardOptions(
          baseUrl: 'https://bff-qlsxnn-app.loctroi.vn:8043'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set accessToken for KpiDashboardBrowser
    const accessToken =
        "eyJhbGciOiJSUzI1NiIsImtpZCI6IjM1MTM1NTEyRTQ3NEE4NTdFMTQ3RkZGRjU2M0E4QTQzIiwidHlwIjoiYXQrand0In0.eyJpc3MiOiJodHRwczovL2d1LW0tZ3cubG9jdHJvaS52bjo4MDQ0IiwibmJmIjoxNjc4OTUxNzEzLCJpYXQiOjE2Nzg5NTE3MTMsImV4cCI6MTY3ODk1NTMxMywiYXVkIjpbImxvY3Ryb2ljb3JlYWdnci1hcGkiLCJmYXJtYmZmLWFwaSIsIm1hc3RlcmRhdGEtYXBpIiwibm9uZ2Rhbi1hcGkiLCJwZXJtaXNzaW9uLWFwaSIsImJsb2JzdG9yYWdlLWFwaSIsIm5vdGlmaWNhdGlvbi1hcGkiLCJrZWhvYWNoLWFwaSIsImRvbmhhbmctYXBpIiwidGllbmRvLWFwaSIsIm5oYXRreS1hcGkiXSwic2NvcGUiOlsiYXBpIl0sImFtciI6WyJwd2QiXSwiY2xpZW50X2lkIjoiNTU2NDhjY2MtMDYzNC00ZGE0LWI1MGUtNTExYzQ0NDQwNmE1Iiwic3ViIjoiNDJmMjY0YjMtZDAwNy00YWIwLWE2NmQtMjQ0YTk5ZDY0NTczIiwiYXV0aF90aW1lIjoxNjc4OTQ3OTAwLCJpZHAiOiJsb2NhbCIsInByZWZlcnJlZF91c2VybmFtZSI6IkdVMDAzVCIsInVuaXF1ZV9uYW1lIjoiR1UwMDNUIiwibmFtZSI6IlRyXHUwMUIwXHUxRURGbmciLCJsYXN0X25hbWUiOiJOaFx1MDBFMm4iLCJzaWQiOiI5NEFCMTkxOUVCQ0Q3M0UzMTJDQkY4QUIzMjQyNjRDQyIsImp0aSI6IkYwRkMxRTIwNkNBM0Q5MTdGNzU5NDAwOTMwMkNBRTZFIn0.w00YAIfjrJf9J9BH9op3Fyq182tf_VRCR1zKKcUXslaZx5d5scc0REJC4UaOb_Yywx3O12oVd3QFqzyujXW5eX4xzQzoeB9r73ap4qXL7GuZxvo2JtrsHnc51JM4BuWZ934oEdwFmTpJvUeMViOYf8Vxqc8ldHsiJhfQ8KeTX-lwFHQm3wh_6lbB5YzaUSm-rhHciz7m0X_j6ol0tZNPclK8aSxpaAzJ3RKc2JCTfYRrLstysmyBvzDDLJL3qndWOlzIs-S_zuS4fC5bdsYG_xx4AX6XSoKwLkLKNFn2mt_XsZd60v1V0o5T4v72tSbKoLZ1dxwQPBp-JIA1nyij6g";
    ltgdashboard.KpiDashboardBrowser.setAuthenticationToken(accessToken);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const ltgdashboard.KpiDashboardBrowser(
        viewType: ltgdashboard.ViewType.tab,
      ),
    );
  }
}
