part of 'dio_client.dart';

class DioInterceptor implements Interceptor {
  @override
  void onRequest(
    RequestOptions options, RequestInterceptorHandler handler) async {
    log('🔸Request[${options.method}] => Path: ${options.uri}');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    log('🔹Response[${response.statusCode}] =>'
      ' Data: ${_formattedData(response.data.toString())}');
    return handler.next(response);
  }

  @override
  void onError(DioException e, ErrorInterceptorHandler handler) async {
    log('🚧onError[${e.type}] => Path: ${e.response?.realUri}');
    return handler.next(e);
  }

  String _formattedData(String data) {
    return data.length > 64 ? '${data.substring(0, 64)} ... }' : data;
  }
}