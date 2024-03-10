import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;

  const MyButton({
    super.key, 
  required this.onTap,
  required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 217, 151, 9)!,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(15.0),
        width: 320.0,
        height: 50.0,
        child: child,
      ),
    );
  }
}