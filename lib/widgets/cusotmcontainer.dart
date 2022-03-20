import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final String buttonName;
  final double? heightofContainer;
  final Function()? onTap;

  const CustomButton(
      {Key? key, this.color, required this.buttonName, this.heightofContainer, this.onTap})
      : super(key: key);
//  CustomButton(this.color,this.buttonName);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: heightofContainer,
        decoration: BoxDecoration(color: color),
        child: Text(buttonName),
      ),
    );
  }
}