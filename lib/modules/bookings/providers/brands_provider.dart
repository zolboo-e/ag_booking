//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/modules/bookings/models/index.dart';

final brandsProvider = StateProvider<List<Brand>>((_) => []);
