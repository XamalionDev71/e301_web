import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = Colors.blue,
    this.isFilled = false
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: ()=>onPressed(),
      child: Text(text),
    );
  }
}
