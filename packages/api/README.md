# ltg_api (EXPERIMENTAL)
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

* Dart 2.15.0+ or Flutter 2.8.0+
* Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  ltg_api: 1.0.1
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  ltg_api:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  ltg_api:
    path: /path/to/ltg_api
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:ltg_api/ltg_api.dart';


final api = LtgApi().getDashboardApi();

try {
    final response = await api.apiV1DashboardGetdashboarddataGet();
    print(response);
} catch on DioError (e) {
    print("Exception when calling DashboardApi->apiV1DashboardGetdashboarddataGet: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*DashboardApi*](doc\DashboardApi.md) | [**apiV1DashboardGetdashboarddataGet**](doc\DashboardApi.md#apiv1dashboardgetdashboarddataget) | **GET** /api/v1/dashboard/getdashboarddata | 
[*KpiApi*](doc\KpiApi.md) | [**apiV1DashboardKpi1Post**](doc\KpiApi.md#apiv1dashboardkpi1post) | **POST** /api/v1/dashboard/kpi1 | 
[*KpiApi*](doc\KpiApi.md) | [**apiV1DashboardKpi2Post**](doc\KpiApi.md#apiv1dashboardkpi2post) | **POST** /api/v1/dashboard/kpi2 | 
[*KpiApi*](doc\KpiApi.md) | [**apiV1DashboardKpi3Post**](doc\KpiApi.md#apiv1dashboardkpi3post) | **POST** /api/v1/dashboard/kpi3 | 
[*KpiApi*](doc\KpiApi.md) | [**apiV1DashboardKpi4Post**](doc\KpiApi.md#apiv1dashboardkpi4post) | **POST** /api/v1/dashboard/kpi4 | 
[*KpiApi*](doc\KpiApi.md) | [**apiV1DashboardKpi5Post**](doc\KpiApi.md#apiv1dashboardkpi5post) | **POST** /api/v1/dashboard/kpi5 | 
[*KpiApi*](doc\KpiApi.md) | [**apiV1DashboardKpi6Post**](doc\KpiApi.md#apiv1dashboardkpi6post) | **POST** /api/v1/dashboard/kpi6 | 
[*KpiApi*](doc\KpiApi.md) | [**apiV1DashboardListGet**](doc\KpiApi.md#apiv1dashboardlistget) | **GET** /api/v1/dashboard/list | 


## Documentation For Models

 - [BadRequestValue](doc\BadRequestValue.md)
 - [ChartData](doc\ChartData.md)
 - [ChartDataItem](doc\ChartDataItem.md)
 - [KpiDashboard](doc\KpiDashboard.md)
 - [KpiDienTichLienKetSanXuat](doc\KpiDienTichLienKetSanXuat.md)
 - [KpiDienTichLienKetSanXuatInputDto](doc\KpiDienTichLienKetSanXuatInputDto.md)
 - [KpiDienTichThuMua](doc\KpiDienTichThuMua.md)
 - [KpiDienTichThuMuaInputDto](doc\KpiDienTichThuMuaInputDto.md)
 - [KpiDoanhSoCoGioiHoa](doc\KpiDoanhSoCoGioiHoa.md)
 - [KpiDoanhSoCoGioiHoaInputDto](doc\KpiDoanhSoCoGioiHoaInputDto.md)
 - [KpiDoanhSoQuetApp](doc\KpiDoanhSoQuetApp.md)
 - [KpiDoanhSoQuetAppInputDto](doc\KpiDoanhSoQuetAppInputDto.md)
 - [KpiDoanhThuVatTuNongNghiep](doc\KpiDoanhThuVatTuNongNghiep.md)
 - [KpiDoanhThuVatTuNongNghiepInputDto](doc\KpiDoanhThuVatTuNongNghiepInputDto.md)
 - [KpiNoQuaHan](doc\KpiNoQuaHan.md)
 - [KpiNoQuaHanInputDto](doc\KpiNoQuaHanInputDto.md)
 - [ProblemDetails](doc\ProblemDetails.md)


## Documentation For Authorization


## oauth2

- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: https://gu-m-gw.loctroi.vn/auth/connect/authorize
- **Scopes**: 
 - **api**: Dashboard API

## Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author


