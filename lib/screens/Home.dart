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
                insideText: "Exit",
                onTap: () {},
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
                ),
                onPressed: () {},
                child: Text("Help"),
              ),
              PizzaButton(
                pizzaPosition: PizzaPosition.topRight,
                insideText: "Settings",
                onTap: () {},
              ),
            ],
          ),
          Column(
            children: [
              Image.asset("lib/assets/images/homepic.png", fit: BoxFit.contain),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(StadiumBorder())),
                onPressed: () {},
                child: Text("Let's Go!"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PizzaButton(
                pizzaPosition: PizzaPosition.bottomLeft,
                insideText: "Voice Commands",
                onTap: () {},
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
                ),
                onPressed: () {},
                child: Text("Narrate"),
              ),
              PizzaButton(
                pizzaPosition: PizzaPosition.bottomRight,
                insideText: "Let's Go",
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
