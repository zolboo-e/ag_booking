//
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import 'backend_client.dart';
//

final authRepositoryProvider = Provider<_IAuthRepository>((ref) {
  final client = ref.watch(backendClientProvider);

  return _AuthRepository(client: client);
});
final accessTokenProvider = StateProvider<String?>((ref) {
  return null;
});

abstract class _IAuthRepository {
  Future<String> login(String userName, String password);
}

class _AuthRepository implements _IAuthRepository {
  _AuthRepository({
    required this.client,
  });

  final Dio client;

  @override
  Future<String> login(String userName, String password) async {
    const url = '/auth/login';
    final payload = {
      'username': userName,
      'password': password,
    };
    final response = await client.post(url, data: payload);
    final token = response.data['data']['token'];

    return token;
  }
}
