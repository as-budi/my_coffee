import 'package:flutter/material.dart';
import 'package:my_coffee/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height:100,
            color: Colors.red,
            child: const Text('child-1')
          ),
          Container(
            height:100,
            color: Colors.green,
            child: const Text('child-2')
          ),
          Container(
            height:100,
            color: Colors.blue,
            child: const Text('child-3')
          )
        ],
      ),
    );
  }
}
