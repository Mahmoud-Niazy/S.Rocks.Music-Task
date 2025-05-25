import 'package:flutter/material.dart';
import 'package:s_rocks_music_task/features/home/presentation/view_model/home_provider/home_provider.dart';
import 'package:s_rocks_music_task/features/layout/presentation/view/widgets/half_circle_item.dart';
import '../../../../core/utils/app_assets.dart';
import 'package:provider/provider.dart';
import '../../../../core/dependency_injection/dependency_injection_manager.dart';
import '../../../home/presentation/view/home_view.dart';
import '../view_model/bottom_navigation_provider/bottom_navigation_bar_provider.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  static List<Widget> screens = [
    ChangeNotifierProvider(
      create: (context) => diInstance<HomeProvider>()..getAllServices(),
      child: HomeView(),
    ),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => diInstance<BottomNavigationBarProvider>(),
      child: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            body: screens[provider.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: provider.currentIndex,

              onTap: (index) {
                provider.toggle(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      HalfCircleItem(isSelected: provider.currentIndex == 0),
                      Image(image: AssetImage(AppAssets.home)),
                    ],
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      HalfCircleItem(isSelected: provider.currentIndex == 1),
                      Image(image: AssetImage(AppAssets.news)),
                    ],
                  ),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      HalfCircleItem(isSelected: provider.currentIndex == 2),
                      Image(image: AssetImage(AppAssets.trackBox)),
                    ],
                  ),
                  label: 'TrackBox',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      HalfCircleItem(isSelected: provider.currentIndex == 3),
                      Image(image: AssetImage(AppAssets.projects)),
                    ],
                  ),
                  label: 'Projects',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


