import 'package:flutter/material.dart';
import 'package:my_coffee/coffee_prefs.dart';
import 'package:my_coffee/styled_body_text.dart';

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
            height:70,
            color: Colors.brown[300],
            padding: const EdgeInsets.all(20),
            child: const StyledBodyText('How I like my coffee ...')
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: CoffePrefs(),
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