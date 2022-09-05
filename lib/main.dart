import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import 'common/services/index.dart';
import 'modules/bookings/providers/index.dart';
import 'modules/bookings/services/index.dart';
//
import 'app.dart';

void main() async {
  // https://codewithandrea.com/articles/riverpod-initialize-listener-app-startup/
  final container = ProviderContainer(
    observers: [
      Logger(),
    ],
  );

  await _setupApp();
  await _loadAccessToken(container.read);
  await _loadConfigs(container.read);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

Future<void> _setupApp() async {
  WidgetsFlutterBinding.ensureInitialized();
}

Future<void> _loadConfigs(Reader read) async {
  final brands = await read(bookingRepositoryProvider).getBrands();
  read(brandsProvider.notifier).state = brands;

  final categories = await read(bookingRepositoryProvider).getCategories();
  read(serviceCategoriesProvider.notifier).state = categories;
}

Future<void> _loadAccessToken(Reader read) async {
  final token = await read(storageRepositoryProvider).verifyAccessToken();

  setAccessToken(read, token);
}

setAccessToken(Reader read, String? token) {
  read(accessTokenProvider.notifier).state = token;

  final headers = read(backendClientProvider).options.headers;
  if (token == null) {
    headers.remove('Authorization');
  } else {
    headers.addAll({'Authorization': 'Bearer $token'});
  }
}

// https://medium.com/dreamwod-tech/flutter-dio-framework-best-practices-668985fc75b7
// https://github.com/funwithflutter/riverpod_tutorials/blob/main/riverpod_004_freezed/lib/main.dart
// https://codewithandrea.com/articles/loading-error-states-state-notifier-async-value/
// https://codewithandrea.com/tips/async-value-guard-try-catch/
// https://github.com/guidezpl/flutter/blob/master/examples/api/lib/material/theme/theme_extension.1.dart
// com.genuineparts.appointment