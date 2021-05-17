import 'package:flutter/material.dart'; 

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  CustomRaisedButton({this.child, this.color, this.borderRadius, this.onPressed});

  @override
  Widget build(BuildContext context) {
    // In order to add a height parameter to the CustomRaisedButton
    // we need to wrap it around a SizedBox widget because by default,
    // RaisedButton widget DOES NOT take 'height' as a legit argument!!
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          elevation: 5.0,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

