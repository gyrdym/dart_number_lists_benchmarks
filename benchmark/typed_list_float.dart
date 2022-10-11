import 'dart:typed_data';

import 'package:benchmark_harness/benchmark_harness.dart';

class TypedListDouble1000Benchmark extends BenchmarkBase {
  TypedListDouble1000Benchmark() : super('Typed list of 1000 double values benchmark');

  final List<double> list = Float32List.fromList(List.generate(1000, (index) => index * 1.0));

  static void main() {
    TypedListDouble1000Benchmark().report();
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
  TypedListDouble1000Benchmark.main();
}
