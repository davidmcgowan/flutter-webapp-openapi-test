library openapi.api;

import 'package:http/io_client.dart';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/serializers.dart';
import 'package:openapi/api/counter_service_api.dart';


class Openapi {

    Dio dio;
    Serializers serializers;
    String basePath = "http://petstore.swagger.io/v2";

    Openapi({this.dio, Serializers serializers}) {
    if (dio == null) {
        BaseOptions options = new BaseOptions(
            baseUrl: basePath,
            connectTimeout: 5000,
            receiveTimeout: 3000,
        );
        this.dio = new Dio(options);
    }

    this.serializers = serializers ?? standardSerializers;
}


    /**
    * Get CounterServiceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    CounterServiceApi getCounterServiceApi() {
    return CounterServiceApi(dio, serializers);
    }


}