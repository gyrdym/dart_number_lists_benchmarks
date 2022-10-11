import 'package:benchmark_harness/benchmark_harness.dart';

class ObjectListDoubleBigBenchmark extends BenchmarkBase {
  ObjectListDoubleBigBenchmark() : super('Object list with bigger doubles benchmark');

  final List<double> list = List.generate(1000, (index) => 1e19 + index);

  static void main() {
    ObjectListDoubleBigBenchmark().report();
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
  ObjectListDoubleBigBenchmark.main();
}
