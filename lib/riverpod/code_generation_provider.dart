import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

final _testProvider = Provider(
  (ref) => 'Hello code generation',
);

@riverpod
String gState(GStateRef ref) {
  return 'Hello code generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  await Future.delayed(Duration(seconds: 2));

  return 10;
}

@Riverpod(keepAlive: true)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  await Future.delayed(Duration(seconds: 2));

  return 10;
}

@riverpod
int gStateMultiply(
  GStateMultiplyRef, {
  required int number1,
  required int number2,
}) {
  return number1 * number2;
}

// @riverpod
@Riverpod(keepAlive: true)
class GStateNotifier extends _$GStateNotifier {
  @override
  int build() {
    return 0;
  }

  increment() {
    state += 1;
  }

  decrement() {
    state -= 1;
  }
}
