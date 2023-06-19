import 'package:flutter/material.dart';

import 'counter_value_10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Counter Value:',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    _counter.toString(),
                    style: TextStyle(fontSize: 45),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 35,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter = _counter+1;
                              if(_counter == 5){
                                AlertDialog(
                                  title: Text('Your Counter Value is $_counter'),
                                );
                              }else if (_counter == 10){
                                Navigator.push(context, MaterialPageRoute(builder: (_) => CounterValue()));
                              }
                            });
                          },
                          child: Text('+'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter = _counter-1;
                            });
                          },
                          child: Text('-'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                        )),
                  ],
                ),
              ),
              ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
