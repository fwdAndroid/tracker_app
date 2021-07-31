
import 'package:flutter/material.dart';

class CustomRaisedBtn extends StatelessWidget {
  late final Widget child;
  late final Color color;
  late final double borderRadius;
  late final VoidCallback onpressed;

  CustomRaisedBtn(
      {required this.child,
      required this.color,
      required this.borderRadius,
      required this.onpressed});
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: onpressed,
      child: child,
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
    );
  }
}
