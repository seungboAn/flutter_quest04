import 'package:flutter/material.dart';
import 'package:mmac_service/screens/onboarding_screen.dart';
import 'package:mmac_service/screens/login_screen.dart';
import 'package:mmac_service/screens/home_screen.dart';
import 'package:mmac_service/screens/loading_screen.dart';
import 'package:mmac_service/screens/chat_screen.dart';

class AppRouter {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String loading = '/loading';
  static const String home = '/home';
  static const String chat = '/chat';

  static Map<String, WidgetBuilder> get routes => {
    onboarding: (context) => OnboardingScreen(),
    login: (context) => LoginScreen(),
    home: (context) => HomeScreen(),
    loading: (context) => LoadingScreen(),
    chat: (context) => ChatScreen(),
  };
}