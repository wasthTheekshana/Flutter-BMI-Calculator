import 'package:flutter/material.dart';

class Bottom_button extends StatelessWidget {
  Bottom_button({required this.lable, required this.onPress});

  final String lable;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress,
      child: Container(
        child: Center(
          child: Text(
            lable,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xFFA45809),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
