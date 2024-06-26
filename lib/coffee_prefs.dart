import 'package:flutter/material.dart';
import 'package:my_coffee/styled_body_text.dart';
import 'package:my_coffee/styled_button.dart';

class CoffePrefs extends StatefulWidget {
  const CoffePrefs({super.key});

  @override
  State<CoffePrefs> createState() => _CoffePrefsState();
}

class _CoffePrefsState extends State<CoffePrefs> {
  int coffee = 1;
  int sugar = 1;

  void increaseCoffee(){
    setState(() {
      coffee = coffee < 5 ? coffee + 1 : 1;
    });
  }

  void increaseSugar(){
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText('Coffee: '),

            for (int i = 0; i < coffee; i++)
              Image.asset('assets/img/coffee_bean.png',
                width: 25,
                colorBlendMode: BlendMode.multiply,
                color: Colors.brown[100],
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseCoffee,
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            const StyledBodyText('Sugar: '),

            for(int i = 0; i < sugar; i++)
              Image.asset('assets/img/sugar_cube.png',
                width: 25,
                colorBlendMode: BlendMode.multiply,
                color: Colors.brown[100],
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseSugar,
              child: const Text('+'),
            ),
          ],
        )
      ],
    );
  }
}