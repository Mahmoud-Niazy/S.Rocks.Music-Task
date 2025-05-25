import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:s_rocks_music_task/features/home/domain/repositories/home_repo.dart';

class HomeRepoImp extends HomeRepo{
  @override
  Future<List<Map<String, dynamic>>> getAllServices() async{
    var res = await FirebaseFirestore.instance.collection('services').get();
    List<Map<String,dynamic>> services = [];
    List<QueryDocumentSnapshot<Map<String, dynamic>>> docs = res.docs;
    for(var service in docs){
      services.add(service.data());
    }
    return services;
  }

}