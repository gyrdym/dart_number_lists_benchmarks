import 'dart:typed_data';

import 'package:benchmark_harness/benchmark_harness.dart';

class TypedListIntBenchmark extends BenchmarkBase {
  TypedListIntBenchmark() : super('Typed list of 1000 integer values benchmark');

  final list = Int32List.fromList(List.generate(1000, (index) => index));

  static void main() {
    TypedListIntBenchmark().report();
  }

  @override
  void run() {
    for (var i = 0; i < list.length; i++) {
      list[i] = list[i] + 100;
    }
  }

  @override
  void setup() {}

  void tearDown() {}
}

Future<void> main() async {
  TypedListIntBenchmark.main();
}
