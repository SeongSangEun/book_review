import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-Naver-Client-Id'] = '_SVcs11LANKh9TeOOIJA';
    options.headers['X-Naver-Client-Secret'] = 'QRY23P9FHA';

    super.onRequest(options, handler);
  }
}