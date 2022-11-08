import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterHome(),
    );
  }
}

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: const Center(child: ItemCounter('Luan')),
    );
  }
}

class ItemCounter extends StatefulWidget {
  final String name;
  const ItemCounter(this.name, {super.key});

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          count++;
        });
      },
      child: Text(
        '${widget.name}: $count',
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
