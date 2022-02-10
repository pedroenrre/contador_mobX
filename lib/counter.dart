import 'package:mobx/mobx.dart';

class Counter {
  final _count = Observable(0);

  int get count => _count.value;

  late Action increment = Action(_increment);

  void _increment() {
    _count.value++;
  }
}
