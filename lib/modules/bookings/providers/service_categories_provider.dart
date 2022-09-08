//
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
import '/common/models/index.dart';

final serviceCategoriesProvider =
    StateProvider<List<ServiceCategory>>((_) => []);
