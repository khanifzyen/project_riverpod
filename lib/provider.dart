import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_model.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

final counterModelProvider = ChangeNotifierProvider<CounterModel>((ref) {
  return CounterModel(counter: 0);
});
