import 'package:flutter/material.dart';

class HalfCircleItem extends StatelessWidget{
  final bool isSelected;
  const HalfCircleItem({super.key,required this.isSelected,});

  @override
  Widget build(BuildContext context) {
    final diameter = 16.0;
    return  Container(
      margin: EdgeInsets.only(
          bottom: 5
      ),
      width: diameter,
      height: diameter / 2,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(diameter / 2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
    );
  }
}