import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/counter.dart';

class CounterServiceApi {
    final Dio _dio;
    Serializers _serializers;

    CounterServiceApi(this._dio, this._serializers);

        /// 
        ///
        /// Get the current value of the counter
        Future<Response<Counter>>getCounter({ CancelToken cancelToken, Map<String, String> headers,}) async {

            String path = "/counter";

            // query params
            Map<String, dynamic> queryParams = {};
            Map<String, String> headerParams = Map.from(headers ?? {});
            Map<String, String> formParams = {};

            queryParams.removeWhere((key, value) => value == null);
            headerParams.removeWhere((key, value) => value == null);
            formParams.removeWhere((key, value) => value == null);

            List<String> contentTypes = [];


            return _dio.request(
            path,
            queryParameters: queryParams,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Counter);
        var data = _serializers.deserializeWith<Counter>(serializer, response.data);

            return Response<Counter>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// Increase the current value of the counter by an amount
        Future<Response<Counter>>incCounter(Counter counter,{ CancelToken cancelToken, Map<String, String> headers,}) async {

            String path = "/counter";

            // query params
            Map<String, dynamic> queryParams = {};
            Map<String, String> headerParams = Map.from(headers ?? {});
            Map<String, String> formParams = {};

            queryParams.removeWhere((key, value) => value == null);
            headerParams.removeWhere((key, value) => value == null);
            formParams.removeWhere((key, value) => value == null);

            List<String> contentTypes = [
                "application/json"];

            var serializedBody = _serializers.serialize(counter);
            var jsoncounter = json.encode(serializedBody);

            return _dio.request(
            path,
            queryParameters: queryParams,
                data: jsoncounter,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Counter);
        var data = _serializers.deserializeWith<Counter>(serializer, response.data);

            return Response<Counter>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// Reset the counter
        Future<Response<Counter>>resetCounter({ CancelToken cancelToken, Map<String, String> headers,}) async {

            String path = "/counter";

            // query params
            Map<String, dynamic> queryParams = {};
            Map<String, String> headerParams = Map.from(headers ?? {});
            Map<String, String> formParams = {};

            queryParams.removeWhere((key, value) => value == null);
            headerParams.removeWhere((key, value) => value == null);
            formParams.removeWhere((key, value) => value == null);

            List<String> contentTypes = [];


            return _dio.request(
            path,
            queryParameters: queryParams,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Counter);
        var data = _serializers.deserializeWith<Counter>(serializer, response.data);

            return Response<Counter>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
