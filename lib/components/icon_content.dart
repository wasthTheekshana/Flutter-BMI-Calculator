import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(
      {required this.icon,
      required this.label,
      required this.iconColor,
      required this.textColor});

  final IconData icon;
  final String label;
  final Color iconColor, textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 50.0,
            color: iconColor,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 20.0,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
