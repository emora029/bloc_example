import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  
  final String name;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final Color side;
  final double sizeWidth;
  final double sizeHeight;
  final double padding;
  final FontWeight fontWeight;
  final Function onPressed;

  CustomRaisedButton({
    this.name,
    this.color = Colors.black,
    this.textColor = Colors.white,
    this.borderRadius = 15.0,
    this.side = Colors.transparent,
    this.sizeWidth = 80.0,
    this.sizeHeight = 10.0,
    this.padding = 10.0,
    this.fontWeight,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Container(
        width: sizeWidth,
        height: sizeHeight,
        padding: EdgeInsets.all(padding),
        child: Text(name, textAlign: TextAlign.center, style: TextStyle(fontSize: 15.0, fontWeight: fontWeight)),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(color: side)
      ),
      elevation: 0.0,
      color: color,
      textColor: textColor,
      onPressed: onPressed
    );
  }
}