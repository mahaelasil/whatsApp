import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/presentation/screen/login-screen.dart';
import 'package:untitled2/presentation/screen/whats_app/whatsapp_home_layout.dart';

import '../../core/constants.dart' as screens;
import '../screen/home-screen.dart';
import '../screen/onboarding-screen.dart';
import '../screen/splash-screen.dart';

class AppRouter {
  late Widget startScreen;

  Route? onGenerateRoute(RouteSettings settings){
    startScreen = const SplashScreen();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case screens.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case screens.whatsappScreen:
        return MaterialPageRoute(builder: (_) => const WhatsappHomeLayout());
      case screens.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case screens.homeScreen:
        final Map data = settings.arguments as Map;
        final String myName = data['name'];
        final String myPassword = data['password'];
        if (kDebugMode) {
          print(myPassword);
        }
        return MaterialPageRoute(builder: (_) => HomeScreen(myName: myName,));
      default:
        return null;
    }
  }
}