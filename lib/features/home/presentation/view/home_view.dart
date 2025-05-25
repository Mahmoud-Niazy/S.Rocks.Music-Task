import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_task/core/methods/navigation.dart';
import 'package:s_rocks_music_task/core/utils/app_styles.dart';
import 'package:s_rocks_music_task/features/home/presentation/view/service_details_view.dart';
import 'package:s_rocks_music_task/features/home/presentation/view/widgets/book_now_item.dart';
import 'package:s_rocks_music_task/features/home/presentation/view/widgets/service_item.dart';
import 'package:s_rocks_music_task/features/home/presentation/view_model/home_provider/home_provider.dart';
import '../../../../core/dependency_injection/dependency_injection_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider.value(
        value: diInstance<HomeProvider>()..getAllServices(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                BookNowItem(),
                SizedBox(height: 15),
                Text(
                  'Hire hand-picked Pros for popular music services',
                  style: AppStyles.style13,
                ),
                Consumer<HomeProvider>(
                  builder: (context, provider, child) {
                    if (provider.services.isEmpty) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (provider.isError) {
                      return Center(child: Text('Error'));
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 0,
                      ),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ServiceItem(
                            serviceModel: provider.services[index],
                            onTab: (){
                              navigate(context: context, screen: ServiceDetailsView(
                                title: 'You tapped on:${provider.services[index].title}',
                              ));
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10);
                        },
                        itemCount: provider.services.length,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
