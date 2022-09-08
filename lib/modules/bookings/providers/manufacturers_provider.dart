//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/models/index.dart';

final manufacturersProvider = StateProvider<List<Manufacturer>>((_) => []);
