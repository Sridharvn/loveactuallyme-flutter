// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loveactuallyme/components/CornerButtons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PizzaButton(
                  pizzaPosition: PizzaPosition.topLeft,
                  insideText: "Hi",
                  onTap: () {}),
              PizzaButton(
                  pizzaPosition: PizzaPosition.topRight,
                  insideText: "Hi",
                  onTap: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PizzaButton(
                  pizzaPosition: PizzaPosition.bottomLeft,
                  insideText: "Hi",
                  onTap: () {}),
              PizzaButton(
                  pizzaPosition: PizzaPosition.bottomRight,
                  insideText: "Hi",
                  onTap: () {}),
            ],
          )
        ],
      ),
    );
  }
}
