import 'package:flutter/material.dart';
import 'package:s_rocks_music_task/core/widgets/custom_button.dart';
import 'package:s_rocks_music_task/features/home/presentation/view/widgets/serach_bar.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_constance.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/device_dimensions.dart';

class BookNowItem extends StatelessWidget {
  const BookNowItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.8],
          colors: [Color(0xFFA90140), Color(0xFF600124)],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SearchBarItem(
                  title: "Search",
                  controller: TextEditingController(),
                ),
              ),
              SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Color(0XFFEADDFF),
                radius: 16,
                child: Image.asset(AppAssets.person),
              ),
            ],
          ),
          SizedBox(height: DeviceDimensions.height * .03),
          Column(
            children: [
              Column(
                children: [
                  Text('claim your', style: AppStyles.style20),
                  Text(
                    'Free Demo',
                    style: AppStyles.style22.copyWith(
                      fontSize: 35,
                      fontFamily: AppConstance.lobsterFontFamily,
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(0, -5),
                child: Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(-40, 0),
                      child: Image.asset(
                        height: DeviceDimensions.height * .15,
                        width: DeviceDimensions.width * .27,
                        AppAssets.cd,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'for custom Music Production',
                            style: AppStyles.style15,
                          ),
                          SizedBox(height: 15),
                          CustomButton(title: 'Book Now', onTap: () {}),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(50, 0),
                      child: Image.asset(
                        height: DeviceDimensions.height * .15,
                        width: DeviceDimensions.width * .27,
                        AppAssets.gytar,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
