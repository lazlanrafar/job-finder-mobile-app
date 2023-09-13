import 'package:flutter/material.dart';
import 'package:job_finder/screens/home_screen.dart';
import 'package:job_finder/screens/job_detail_screen.dart';
import 'package:job_finder/screens/splash_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SplashScreen(),
  '/home': (context) => const HomeScreen(),
  '/job-detail': (context) => const JobDetailScreen(),
};
