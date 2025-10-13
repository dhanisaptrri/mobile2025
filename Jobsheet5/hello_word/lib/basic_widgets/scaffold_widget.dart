import 'package:flutter/material.dart';

class Step3Scaffold extends StatefulWidget {
  const Step3Scaffold({Key? key}) : super(key: key);

  @override
  State<Step3Scaffold> createState() => _Step3ScaffoldState();
}

class _Step3ScaffoldState extends State<Step3Scaffold> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
    Widget build(BuildContext context) {
        return Scaffold( // <-- HARUS ADA SCAFFOLD
            appBar: AppBar(title: const Text('My Increment App')),
            body: Center(
                child: Column( // <-- Column di dalam body
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text('You have pushed the button this many times:'),
                        Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
                    ],
                ),
            ),
            // FAB harus berada di properti floatingActionButton, BUKAN di Column
            floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment Counter',
                child: const Icon(Icons.add),
            ),
        );
    }
}