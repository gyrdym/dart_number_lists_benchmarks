import 'package:benchmark_harness/benchmark_harness.dart';

class ObjectListIntBigBenchmark extends BenchmarkBase {
  ObjectListIntBigBenchmark() : super('Object list with bigger integers benchmark');

  final List<int> list = List.generate(1000, (index) => (1e19 + index).toInt());

  static void main() {
    ObjectListIntBigBenchmark().report();
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
  ObjectListIntBigBenchmark.main();
}
