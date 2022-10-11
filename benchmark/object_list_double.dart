import 'package:benchmark_harness/benchmark_harness.dart';

class ObjectListDouble1000Benchmark extends BenchmarkBase {
  ObjectListDouble1000Benchmark() : super('Object list of 1000 double values benchmark');

  final List<double> list = List.generate(1000, (index) => index.toDouble());

  static void main() {
    ObjectListDouble1000Benchmark().report();
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
  ObjectListDouble1000Benchmark.main();
}
