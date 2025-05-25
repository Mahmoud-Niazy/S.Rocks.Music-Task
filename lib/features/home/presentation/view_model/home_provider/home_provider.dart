import 'package:flutter/foundation.dart';
import 'package:s_rocks_music_task/features/home/data/models/service_model/service_model.dart';
import 'package:s_rocks_music_task/features/home/domain/use_cases/get_all_services_use_case.dart';

class HomeProvider extends ChangeNotifier{
  final GetAllServicesUseCase getAllServicesUseCase;
  HomeProvider(this.getAllServicesUseCase);

  List<ServiceModel> services = [];
  bool isError = false;

  Future<void> getAllServices()async{
    try{
      services = await getAllServicesUseCase.execute();
      notifyListeners();
    }
    catch(error){
      isError = true;
      notifyListeners();
    }

  }

}