import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee', 
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          )
        ),
        backgroundColor: Colors.brown[600],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height:60,
            color: Colors.brown[300],
            padding: const EdgeInsets.all(20),
            child: const Text('How I like my coffee ...',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ),
          Container(
            height:60,
            padding: const EdgeInsets.all(20),
            color: Colors.brown[100],
            child: const Text('Coffee')
          ),
          Container(
            height:60,
            padding: const EdgeInsets.all(20),
            color: Colors.brown[50],
            child: const Text('Sugar')
          ),
          Expanded(
            child: Image.asset('assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            )
          )
        ],
      ),     
    );
  }
}