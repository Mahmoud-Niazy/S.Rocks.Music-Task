import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget{
  final String title;
  final void Function()? onTap;

  const CustomButton({super.key,
    required this.title,
    required this.onTap,
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: AppStyles.style13.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}