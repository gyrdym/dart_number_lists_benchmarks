import 'package:benchmark_harness/benchmark_harness.dart';

class ObjectListInt1000Benchmark extends BenchmarkBase {
  ObjectListInt1000Benchmark() : super('Object list of 1000 integer values benchmark');

  final List<int> list = List.generate(1000, (index) => index);

  static void main() {
    ObjectListInt1000Benchmark().report();
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
  ObjectListInt1000Benchmark.main();
}
