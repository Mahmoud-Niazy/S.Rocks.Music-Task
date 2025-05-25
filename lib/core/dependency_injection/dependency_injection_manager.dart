import 'package:get_it/get_it.dart';
import 'package:s_rocks_music_task/features/home/domain/repositories/home_repo.dart';
import 'package:s_rocks_music_task/features/home/domain/use_cases/get_all_services_use_case.dart';
import 'package:s_rocks_music_task/features/home/presentation/view_model/home_provider/home_provider.dart';
import 'package:s_rocks_music_task/features/layout/presentation/view_model/bottom_navigation_provider/bottom_navigation_bar_provider.dart';
import '../../features/home/data/repositories/home_repo_imp.dart';

final diInstance = GetIt.instance;

class DependencyInjectionManager {

  static void init(){
    /// REPOS
    diInstance.registerLazySingleton<HomeRepo>(
          () => HomeRepoImp(),
    );

    /// Use Cases
    diInstance.registerLazySingleton<GetAllServicesUseCase>(
          () => GetAllServicesUseCase(diInstance<HomeRepo>()),
    );


    /// Providers
    diInstance.registerLazySingleton<HomeProvider>(
          () => HomeProvider(diInstance<GetAllServicesUseCase>()),
    );
    diInstance.registerLazySingleton<BottomNavigationBarProvider>(
          () => BottomNavigationBarProvider(),
    );
  }
}