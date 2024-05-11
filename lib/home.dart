import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Everyday Coffee'),
        backgroundColor: Colors.brown[300],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange,
        width: 300,
        height: 100,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: const Text('Drinking coffee with IOB Students',
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 2,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ); 
  }
}