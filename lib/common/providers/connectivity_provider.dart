import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectivityStreamProvider = StreamProvider<ConnectivityResult>(
  (_) => Connectivity().onConnectivityChanged,
);

final connectivityProvider =
    StateProvider<ConnectivityResult>((_) => ConnectivityResult.none);
