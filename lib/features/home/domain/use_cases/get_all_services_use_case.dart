import 'package:s_rocks_music_task/features/home/data/models/service_model/service_model.dart';
import 'package:s_rocks_music_task/features/home/domain/repositories/home_repo.dart';

class GetAllServicesUseCase{
  final HomeRepo homeRepo;
  GetAllServicesUseCase(this.homeRepo);

  Future<List<ServiceModel>> execute()async{
   var res = await homeRepo.getAllServices();
   List<ServiceModel> services = [];
   for(var service in res){
     services.add(ServiceModel.fromJson(service));
   }
   return services;
  }
}