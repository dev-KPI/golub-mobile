import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

part 'dio_interceptor.dart';

@singleton
class DioClient {
  final String baseUrl;
  late Dio _dio;

  DioClient({required this.baseUrl}) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: 30000),
      sendTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
      responseType: ResponseType.json,
    ));

    /// Add logging interceptor
    _dio.interceptors.add(DioInterceptor());
  }

  /// Get method
  Future<Response> get(
    String path, {
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
    }) async {
    return _dio.get(
      path,
      options: Options(headers: headers),
      queryParameters: queryParameters
    );
  }

  /// Post method
  Future<Response> post(
    String path, {
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      dynamic data,
    }) async {
    return _dio.post(
      path,
      options: Options(headers: headers),
      queryParameters: queryParameters,
      data: data,
    );
  }

  /// Put method
  Future<Response> put(
    String path, {
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      dynamic data,
    }) async {
    return _dio.put(
      path,
      options: Options(headers: headers),
      queryParameters: queryParameters,
      data: data,
    );
  }

  /// Delete method
  Future<Response> delete(
    String path, {
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      dynamic data,
    }) async {
    return _dio.delete(
      path,
      options: Options(headers: headers),
      queryParameters: queryParameters,
      data: data,
    );
  }

  /// Patch method
  Future<Response> patch(
    String path, {
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters,
      dynamic data,
    }) async {
    return _dio.patch(
      path,
      options: Options(headers: headers),
      queryParameters: queryParameters,
      data: data,
    );
  }
}