import 'package:flutter/material.dart';

class CounterValue extends StatefulWidget {
  const CounterValue({Key? key}) : super(key: key);

  @override
  State<CounterValue> createState() => _CounterValueState();
}

class _CounterValueState extends State<CounterValue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Value Page'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Congratulations! You reached 10!')
        ],
      ),
    );
  }
}
