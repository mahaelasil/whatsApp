import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:untitled2/presentation/router/app-router.dart';
import 'package:untitled2/presentation/screen/whats_app/whatsapp_home_layout.dart';

import 'data/data-source/local/my-cache.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.initCache();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter App',
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
          ),
          onGenerateRoute: appRouter.onGenerateRoute,
          home: const WhatsappHomeLayout(),
        );
      },
    );
  }
}