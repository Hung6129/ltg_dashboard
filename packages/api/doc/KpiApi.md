# ltg_api.api.KpiApi

## Load the API package
```dart
import 'package:ltg_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DashboardKpi1Post**](KpiApi.md#apiv1dashboardkpi1post) | **POST** /api/v1/dashboard/kpi1 | 
[**apiV1DashboardKpi2Post**](KpiApi.md#apiv1dashboardkpi2post) | **POST** /api/v1/dashboard/kpi2 | 
[**apiV1DashboardKpi3Post**](KpiApi.md#apiv1dashboardkpi3post) | **POST** /api/v1/dashboard/kpi3 | 
[**apiV1DashboardKpi4Post**](KpiApi.md#apiv1dashboardkpi4post) | **POST** /api/v1/dashboard/kpi4 | 
[**apiV1DashboardKpi5Post**](KpiApi.md#apiv1dashboardkpi5post) | **POST** /api/v1/dashboard/kpi5 | 
[**apiV1DashboardKpi6Post**](KpiApi.md#apiv1dashboardkpi6post) | **POST** /api/v1/dashboard/kpi6 | 
[**apiV1DashboardListGet**](KpiApi.md#apiv1dashboardlistget) | **GET** /api/v1/dashboard/list | 


# **apiV1DashboardKpi1Post**
> BuiltList<KpiDienTichLienKetSanXuat> apiV1DashboardKpi1Post(kpiDienTichLienKetSanXuatInputDto)



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getKpiApi();
final KpiDienTichLienKetSanXuatInputDto kpiDienTichLienKetSanXuatInputDto = ; // KpiDienTichLienKetSanXuatInputDto | 

try {
    final response = api.apiV1DashboardKpi1Post(kpiDienTichLienKetSanXuatInputDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling KpiApi->apiV1DashboardKpi1Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kpiDienTichLienKetSanXuatInputDto** | [**KpiDienTichLienKetSanXuatInputDto**](KpiDienTichLienKetSanXuatInputDto.md)|  | [optional] 

### Return type

[**BuiltList&lt;KpiDienTichLienKetSanXuat&gt;**](KpiDienTichLienKetSanXuat.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardKpi2Post**
> BuiltList<KpiDoanhThuVatTuNongNghiep> apiV1DashboardKpi2Post(kpiDoanhThuVatTuNongNghiepInputDto)



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getKpiApi();
final KpiDoanhThuVatTuNongNghiepInputDto kpiDoanhThuVatTuNongNghiepInputDto = ; // KpiDoanhThuVatTuNongNghiepInputDto | 

try {
    final response = api.apiV1DashboardKpi2Post(kpiDoanhThuVatTuNongNghiepInputDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling KpiApi->apiV1DashboardKpi2Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kpiDoanhThuVatTuNongNghiepInputDto** | [**KpiDoanhThuVatTuNongNghiepInputDto**](KpiDoanhThuVatTuNongNghiepInputDto.md)|  | [optional] 

### Return type

[**BuiltList&lt;KpiDoanhThuVatTuNongNghiep&gt;**](KpiDoanhThuVatTuNongNghiep.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardKpi3Post**
> BuiltList<KpiNoQuaHan> apiV1DashboardKpi3Post(kpiNoQuaHanInputDto)



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getKpiApi();
final KpiNoQuaHanInputDto kpiNoQuaHanInputDto = ; // KpiNoQuaHanInputDto | 

try {
    final response = api.apiV1DashboardKpi3Post(kpiNoQuaHanInputDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling KpiApi->apiV1DashboardKpi3Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kpiNoQuaHanInputDto** | [**KpiNoQuaHanInputDto**](KpiNoQuaHanInputDto.md)|  | [optional] 

### Return type

[**BuiltList&lt;KpiNoQuaHan&gt;**](KpiNoQuaHan.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardKpi4Post**
> BuiltList<KpiDienTichThuMua> apiV1DashboardKpi4Post(kpiDienTichThuMuaInputDto)



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getKpiApi();
final KpiDienTichThuMuaInputDto kpiDienTichThuMuaInputDto = ; // KpiDienTichThuMuaInputDto | 

try {
    final response = api.apiV1DashboardKpi4Post(kpiDienTichThuMuaInputDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling KpiApi->apiV1DashboardKpi4Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kpiDienTichThuMuaInputDto** | [**KpiDienTichThuMuaInputDto**](KpiDienTichThuMuaInputDto.md)|  | [optional] 

### Return type

[**BuiltList&lt;KpiDienTichThuMua&gt;**](KpiDienTichThuMua.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardKpi5Post**
> BuiltList<KpiDoanhSoQuetApp> apiV1DashboardKpi5Post(kpiDoanhSoQuetAppInputDto)



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getKpiApi();
final KpiDoanhSoQuetAppInputDto kpiDoanhSoQuetAppInputDto = ; // KpiDoanhSoQuetAppInputDto | 

try {
    final response = api.apiV1DashboardKpi5Post(kpiDoanhSoQuetAppInputDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling KpiApi->apiV1DashboardKpi5Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kpiDoanhSoQuetAppInputDto** | [**KpiDoanhSoQuetAppInputDto**](KpiDoanhSoQuetAppInputDto.md)|  | [optional] 

### Return type

[**BuiltList&lt;KpiDoanhSoQuetApp&gt;**](KpiDoanhSoQuetApp.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardKpi6Post**
> BuiltList<KpiDoanhSoCoGioiHoa> apiV1DashboardKpi6Post(kpiDoanhSoCoGioiHoaInputDto)



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getKpiApi();
final KpiDoanhSoCoGioiHoaInputDto kpiDoanhSoCoGioiHoaInputDto = ; // KpiDoanhSoCoGioiHoaInputDto | 

try {
    final response = api.apiV1DashboardKpi6Post(kpiDoanhSoCoGioiHoaInputDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling KpiApi->apiV1DashboardKpi6Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kpiDoanhSoCoGioiHoaInputDto** | [**KpiDoanhSoCoGioiHoaInputDto**](KpiDoanhSoCoGioiHoaInputDto.md)|  | [optional] 

### Return type

[**BuiltList&lt;KpiDoanhSoCoGioiHoa&gt;**](KpiDoanhSoCoGioiHoa.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1DashboardListGet**
> BuiltList<KpiDashboard> apiV1DashboardListGet()



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getKpiApi();

try {
    final response = api.apiV1DashboardListGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling KpiApi->apiV1DashboardListGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;KpiDashboard&gt;**](KpiDashboard.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

