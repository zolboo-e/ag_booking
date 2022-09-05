//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/services/index.dart';
import '/main.dart';

class LoginPageController extends StateNotifier<AsyncValue<String?>> {
  LoginPageController(this.read) : super(const AsyncData(null));

  final Reader read;

  Future<void> login(String userName, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final token =
          await read(authRepositoryProvider).login(userName, password);
      await read(storageRepositoryProvider).setAccessToken(token);
      setAccessToken(read, token);

      return token;
    });
  }
}

final loginPageControllerProvider =
    StateNotifierProvider.autoDispose<LoginPageController, AsyncValue<String?>>(
  (ref) => LoginPageController(ref.read),
);
