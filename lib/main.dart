import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app_ui/utils/routes/route_names.dart';
import 'package:plant_app_ui/utils/routes/route_settings.dart';
import 'package:plant_app_ui/utils/theme/app_theme.dart';

void main() {
  runApp(const PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(430, 932),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: RouteNames.onboarding,
    );
  }
}
