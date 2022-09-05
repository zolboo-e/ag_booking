//
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
//
import '/common/providers/index.dart';
//

final storageRepositoryProvider = Provider<_IStorageRepository>((ref) {
  final storage = ref.watch(secureStorageProvider);

  return _StorageRepository(storage: storage);
});

abstract class _IStorageRepository {
  Future<String?> getAccessToken();
  Future<void> setAccessToken(String token);
  Future<String?> verifyAccessToken();
}

class _StorageRepository implements _IStorageRepository {
  _StorageRepository({
    required this.storage,
  });

  final FlutterSecureStorage storage;

  @override
  Future<String?> getAccessToken() async {
    final token = await storage.read(key: 'accessToken');

    return token;
  }

  @override
  Future<void> setAccessToken(String token) async {
    await storage.write(key: 'accessToken', value: token);
  }

  @override
  Future<String?> verifyAccessToken() async {
    final token = await storage.read(key: 'accessToken');

    if (token == null || JwtDecoder.isExpired(token)) {
      return null;
    }

    return token;
  }
}
