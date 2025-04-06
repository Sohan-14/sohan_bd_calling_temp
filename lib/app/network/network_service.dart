import 'dart:io';
import 'package:dio/dio.dart';
import 'package:sohan_bd_calling_temp/app/config/app_constants.dart';
import 'package:sohan_bd_calling_temp/app/enums/http_method.dart';
import 'package:sohan_bd_calling_temp/app/storage/storage_service.dart';
import 'package:sohan_bd_calling_temp/app/utils/logger_utils.dart';

class NetworkService {
  static final NetworkService _instance = NetworkService._internal();
  factory NetworkService() => _instance;
  late Dio _dio;

  NetworkService._internal(){
    _dio = Dio(BaseOptions(
      baseUrl: AppConstants.apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: <String, dynamic>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        final dynamic data = StorageService().getData("authToken");
        final String? token = data is String ? data : null;

        if (token != null && token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        LoggerUtils.debug("Request: Method = ${options.method} || Uri = ${options.uri} || Headers = ${options.headers}");
        return handler.next(options);
      },
      onResponse: (Response<dynamic> response, ResponseInterceptorHandler handler) {
        LoggerUtils.info("Response: ${response.statusCode} ${response.data}");
        return handler.next(response);
      },
      onError: (DioException e, ErrorInterceptorHandler handler) {
        LoggerUtils.error("Error: ${e.response?.statusCode} ${e.message}");
        return handler.next(e);
      },
    ));
  }

  Future<T> handleRequest<T>({
    required HttpMethod httpMethod,
    required String endpoint,
    T Function(Map<String, dynamic>)? fromJson,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Map<String, List<File>>? fileFields
  }) async {
    try {
      final Response<dynamic> response = await _sendRequest(httpMethod, endpoint, queryParameters, data, fileFields);
      return _parseResponse<T>(response: response, fromJson: fromJson);
    } catch (exception) {
      LoggerUtils.error("$httpMethod request failed: $exception");
      rethrow;
    }
  }

  Future<List<T>> handleListRequest<T>({
    required HttpMethod httpMethod,
    required String endpoint,
    T Function(Map<String, dynamic>)? fromJson,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Map<String, List<File>>? fileFields
  }) async {
    try {
      final Response<dynamic> response = await _sendRequest(httpMethod, endpoint, queryParameters, data, fileFields);
      return _parseListResponse<T>(response: response, fromJson: fromJson);
    } catch (exception) {
      LoggerUtils.error("$httpMethod request failed: $exception");
      rethrow;
    }
  }


  Future<Response<dynamic>> _sendRequest(
      HttpMethod httpMethod,
      String endpoint,
      Map<String, dynamic>? queryParameters,
      dynamic data,
      Map<String, List<File>>? fileFields
      ) async {
    switch(httpMethod){
      case HttpMethod.GET:
        return await _dio.get(endpoint, queryParameters:  queryParameters);
      case HttpMethod.POST:
        return await _dio.post(endpoint, data: _prepareData(data, fileFields));
      case HttpMethod.PUT:
        return await _dio.put(endpoint, data: _prepareData(data, fileFields));
      case HttpMethod.PATCH:
        return await _dio.patch(endpoint, data: _prepareData(data, fileFields));
      case HttpMethod.DELETE:
        return await _dio.delete(endpoint, queryParameters: queryParameters);
    }
  }

  dynamic _prepareData(dynamic data,  Map<String, List<File>>? fileFields) {
    final FormData formData = FormData.fromMap(data is Map<String, dynamic> ? data : <String, dynamic>{});

    if (fileFields != null && fileFields.isNotEmpty) {
      for (final MapEntry<String, List<File>> entry in fileFields.entries) {
        final String fieldName = entry.key;
        final List<File> files = entry.value;

        for(final File file in files){
          formData.files.add(MapEntry<String, MultipartFile>(
            fieldName,
            MultipartFile.fromFileSync(file.path, filename: file.uri.pathSegments.last),
          ));
        }
      }
    }
    return formData;
  }

  T _parseResponse<T>({required Response<dynamic> response, T Function(Map<String, dynamic>)? fromJson}) {
    if (response.statusCode == null || response.statusCode! < 200 || response.statusCode! >= 300) {
      throw Exception("Error: ${response.statusCode}");
    }
    if (fromJson != null) {
      if (response.data is Map<String, dynamic>) {
        return fromJson(response.data as Map<String, dynamic>);
      }
    }
    if (response.data is T) {
      return response.data as T;
    }
    return response.data;
  }

  List<T> _parseListResponse<T>({
    required Response<dynamic> response,
    T Function(Map<String, dynamic>)? fromJson,
  }) {
    if (response.statusCode == null || response.statusCode! < 200 || response.statusCode! >= 300) {
      throw Exception("Error: ${response.statusCode}");
    }

    final dynamic responseData = response.data;

    if (fromJson != null) {
      if (responseData is List) {
        return responseData.map((dynamic json) {
          if (json is Map<String, dynamic>) {
            return fromJson(json);
          } else {
            throw Exception("Expected Map<String, dynamic> but got ${json.runtimeType}");
          }
        }).toList();
      }
      else {
        throw Exception("Unexpected response type: ${responseData.runtimeType}, expected List");
      }
    }
    return <dynamic>[responseData] as List<T>;
  }
}
