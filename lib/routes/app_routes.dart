import 'package:flutter/material.dart';

import '../views/login/login_screen.dart';
import '../views/signup/signup_screen.dart';
import '../views/forgot_password/forgot_password_screen.dart';
import '../views/splash/splash_screen.dart';
import '../views/home/dashboard_screen.dart';

import '../screens/profile_screen.dart';
import '../screens/events_screen.dart';
import '../screens/notes_screen.dart';
import '../screens/chat_screen.dart';
import '../screens/courses_screen.dart';
import '../screens/settings_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/forgot-password';
  static const String home = '/home';

  static const String profile = '/profile';
  static const String events = '/events';
  static const String notes = '/notes';
  static const String chat = '/chat';
  static const String courses = '/courses';
  static const String settings = '/settings';

  static final routes = <String, WidgetBuilder>{
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
    signup: (context) => const SignupScreen(),
    forgotPassword: (context) => const ForgotPasswordScreen(),
    home: (context) => const DashboardScreen(),

    profile: (context) => const ProfileScreen(),
    events: (context) => const EventsScreen(),
    notes: (context) => const NotesScreen(),
    chat: (context) => const ChatScreen(),
    courses: (context) => const CoursesScreen(),
    settings: (context) => const SettingsScreen(),
  };
}
