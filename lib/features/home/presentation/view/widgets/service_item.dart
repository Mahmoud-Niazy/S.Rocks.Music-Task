import 'package:flutter/material.dart';
import 'package:s_rocks_music_task/core/utils/app_styles.dart';
import 'package:s_rocks_music_task/features/home/data/models/service_model/service_model.dart';

class ServiceItem extends StatelessWidget {
  final ServiceModel serviceModel;
  final void Function()? onTab;

  const ServiceItem({
    super.key,
    required this.serviceModel,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(serviceModel.backgroundImage ?? ''), // Use NetworkImage if it's a URL
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color(0XFF202126).withValues(
                alpha: .8
              ),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Color(0XFF2F2F39),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(serviceModel.icon ?? ''),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      serviceModel.title ?? '',
                      style: AppStyles.style17,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      ),
                    const SizedBox(height: 4),
                    Text(
                      serviceModel.description ?? '',
                      style: AppStyles.style13 ,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.play_arrow, color: Colors.white, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
