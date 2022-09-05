//
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final backendClientProvider = Provider<Dio>((ref) {
  final dio = Dio(_options);
  dio.interceptors.add(_interceptors);

  return dio;
});

final BaseOptions _options = BaseOptions(
  baseUrl: 'https://api.garage.mn/v1',
);
final _interceptors = InterceptorsWrapper(
  onRequest: (options, handler) {
    return handler.next(options);
  },
  onResponse: (response, handler) {
    return handler.next(response);
  },
  onError: (error, handler) {
    return handler.next(error);
  },
);
