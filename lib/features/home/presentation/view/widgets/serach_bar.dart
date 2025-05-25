import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';

//ignore: must_be_immutable
class SearchBarItem extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const SearchBarItem({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0XFF2F2F39),
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.search, size: 22),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: title,
                hintStyle: AppStyles.style17Grey,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 24,
            color: Colors.white24,
            margin: const EdgeInsets.symmetric(horizontal: 12),
          ),
          Icon(Icons.mic_rounded, size: 20),
        ],
      ),
    );
  }
}
