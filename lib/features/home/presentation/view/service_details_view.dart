import 'package:flutter/material.dart';
import 'package:s_rocks_music_task/core/utils/app_styles.dart';

class ServiceDetailsView extends StatelessWidget {
  final String title;
  const ServiceDetailsView({super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
          style: AppStyles.style20Bold,
        ),
      ),
    );
  }
}