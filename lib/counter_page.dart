import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(counterModelProvider).decrement();
                },
                child: const Text("-"),
              ),
              const SizedBox(width: 10),
              Text(ref.watch(counterModelProvider).counter.toString()),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  ref.read(counterModelProvider).increment();
                },
                child: const Text("+"),
              ),
            ],
          ),
        ));
  }
}
