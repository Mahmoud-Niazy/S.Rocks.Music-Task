import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:s_rocks_music_task/features/layout/presentation/view/layout_view.dart';
import 'core/dependency_injection/dependency_injection_manager.dart';
import 'core/utils/app_theme.dart';
import 'core/utils/device_dimensions.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DependencyInjectionManager.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    DeviceDimensions.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutView(),
      theme: AppTheme.appTheme,
    );
  }
}