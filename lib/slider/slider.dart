import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: _value,
            height: _value,
          ),
          Text(
            'Value: ${(_value).round()}',
            style: const TextStyle(fontSize: 30),
          ),
          Slider(
            value: _value,
            onChanged: (val) => setState(() => _value = val),
            min: 0,
            max: 100,
            divisions: 10,
          )
        ],
      ),
    );
  }
}
