import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/routes/route_names.dart';
import 'package:plant_app_ui/utils/routes/route_settings.dart';

void main() {
  runApp(const PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: RouteNames.onboarding,
    );
  }
}
