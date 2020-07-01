# openapi.api.CounterServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCounter**](CounterServiceApi.md#getCounter) | **get** /counter | 
[**incCounter**](CounterServiceApi.md#incCounter) | **post** /counter | 
[**resetCounter**](CounterServiceApi.md#resetCounter) | **delete** /counter | 


# **getCounter**
> Counter getCounter()



Get the current value of the counter

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CounterServiceApi();

try { 
    var result = api_instance.getCounter();
    print(result);
} catch (e) {
    print("Exception when calling CounterServiceApi->getCounter: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Counter**](Counter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incCounter**
> Counter incCounter(counter)



Increase the current value of the counter by an amount

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CounterServiceApi();
var counter = new Counter(); // Counter | 

try { 
    var result = api_instance.incCounter(counter);
    print(result);
} catch (e) {
    print("Exception when calling CounterServiceApi->incCounter: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **counter** | [**Counter**](Counter.md)|  | 

### Return type

[**Counter**](Counter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetCounter**
> Counter resetCounter()



Reset the counter

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CounterServiceApi();

try { 
    var result = api_instance.resetCounter();
    print(result);
} catch (e) {
    print("Exception when calling CounterServiceApi->resetCounter: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Counter**](Counter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

