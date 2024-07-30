# ltg_api.api.DashboardApi

## Load the API package
```dart
import 'package:ltg_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1DashboardGetdashboarddataGet**](DashboardApi.md#apiv1dashboardgetdashboarddataget) | **GET** /api/v1/dashboard/getdashboarddata | 


# **apiV1DashboardGetdashboarddataGet**
> BuiltList<ChartData> apiV1DashboardGetdashboarddataGet()



### Example
```dart
import 'package:ltg_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = LtgApi().getDashboardApi();

try {
    final response = api.apiV1DashboardGetdashboarddataGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DashboardApi->apiV1DashboardGetdashboarddataGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ChartData&gt;**](ChartData.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

