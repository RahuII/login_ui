import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.child,
    required this.primaryColorHexCode,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final int primaryColorHexCode;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.grey[600],
        primary: Color(primaryColorHexCode),
        minimumSize: const Size(88, 50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
      ),
      onPressed: onPressed,
    );
  }
}

void _nothingHaveTodo() {
  // Todo somthing
}
