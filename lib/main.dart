import 'package:flutter/material.dart';
import 'package:job_finder/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/job-detail',
      routes: appRoutes,
      navigatorKey: GlobalKey<NavigatorState>(),
    );
  }
}
