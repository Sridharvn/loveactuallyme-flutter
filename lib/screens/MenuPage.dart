// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loveactuallyme/components/CornerButtons.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
                insideText: "Back",
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
                insideText: "Community",
                onTap: () {},
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("lib/assets/images/homepic.png", fit: BoxFit.contain),
              ElevatedButton(
                style: ButtonStyle(
                    // shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
                child: Text("Social"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    // shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
                child: Text("Professional"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    // shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
                child: Text("Community"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PizzaButton(
                pizzaPosition: PizzaPosition.bottomLeft,
                insideText: "Social",
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
                insideText: "Professional",
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
