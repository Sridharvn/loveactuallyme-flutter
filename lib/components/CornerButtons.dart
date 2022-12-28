// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PizzaPosition { topLeft, topRight, bottomLeft, bottomRight }

class PizzaButton extends StatelessWidget {
  final PizzaPosition pizzaPosition;
  final _buttonSize = 100.0;
  var insideText = "";
  Function onTap;

  PizzaButton(
      {Key? key,
      required this.pizzaPosition,
      required this.insideText,
      required this.onTap})
      : super(key: key);

  BorderRadiusGeometry? _generateBorderRadius() {
    switch (pizzaPosition) {
      case PizzaPosition.bottomRight:
        return BorderRadius.only(
          topLeft: Radius.circular(_buttonSize),
        );
      case PizzaPosition.bottomLeft:
        return BorderRadius.only(
          topRight: Radius.circular(_buttonSize),
        );
      case PizzaPosition.topRight:
        return BorderRadius.only(
          bottomLeft: Radius.circular(_buttonSize),
        );
      case PizzaPosition.topLeft:
        return BorderRadius.only(
          bottomRight: Radius.circular(_buttonSize),
        );
    }
  }

  Alignment? _generateAlignment() {
    switch (pizzaPosition) {
      case PizzaPosition.bottomRight:
        return Alignment.bottomRight;
      case PizzaPosition.bottomLeft:
        return Alignment.bottomLeft;
      case PizzaPosition.topRight:
        return Alignment.topRight;
      case PizzaPosition.topLeft:
        return Alignment.topLeft;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        width: _buttonSize,
        height: _buttonSize,
        // margin: EdgeInsets.all(1.0),
        alignment: _generateAlignment(),
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: _generateBorderRadius(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
          child: Text(
            insideText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
