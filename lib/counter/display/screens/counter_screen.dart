import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tests/counter/display/providers/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterProvider provider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${context.watch<CounterProvider>().counterValue}',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
              onPressed: () {
                context.read<CounterProvider>().incrementValue();
              },
              icon: const Icon(Icons.add)),
          IconButton.filled(
            onPressed: () {
              context.read<CounterProvider>().decrementValue();
            },
            icon: const Icon(Icons.remove),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
