import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_riverpod/layout/default_layout.dart';
import 'package:study_riverpod/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(gStateMultiplyProvider(number1: 2, number2: 3));

    print('build');

    return DefaultLayout(
      title: 'Code Generation Screen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'state1 = $state1',
            textAlign: TextAlign.center,
          ),
          state2.when(
            data: (data) {
              return Text(
                'state2 : $data',
                textAlign: TextAlign.center,
              );
            },
            error: (err, stack) => Text(err.toString()),
            loading: () => Center(child: CircularProgressIndicator()),
          ),
          state3.when(
            data: (data) {
              return Text(
                'state3 : $data',
                textAlign: TextAlign.center,
              );
            },
            error: (err, stack) => Text(err.toString()),
            loading: () => Center(child: CircularProgressIndicator()),
          ),
          Text(
            'state4 = $state4',
            textAlign: TextAlign.center,
          ),
          Consumer(builder: (context, ref, child) {
            final state5 = ref.watch(gStateNotifierProvider);
            return Text(
              'state5 = $state5',
              textAlign: TextAlign.center,
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () =>
                    ref.read(gStateNotifierProvider.notifier).increment(),
                child: Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () =>
                    ref.read(gStateNotifierProvider.notifier).decrement(),
                child: Text('Decrement'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () => ref.invalidate(gStateNotifierProvider),
            child: Text('Invalidate'),
          ),
        ],
      ),
    );
  }
}
