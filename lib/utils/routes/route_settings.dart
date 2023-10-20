import 'package:flutter/material.dart';
import 'package:plant_app_ui/models/plant_item_model.dart';
import 'package:plant_app_ui/screens/home/home_screen.dart';
import 'package:plant_app_ui/screens/onboarding/onboarding_screen.dart';
import 'package:plant_app_ui/screens/plant_details/plant_details_screen.dart';
import 'package:plant_app_ui/utils/routes/route_names.dart';

class AppRoutes {
  AppRoutes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      case RouteNames.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case RouteNames.plantDetails:
        return MaterialPageRoute(
          builder: (context) => PlantDetailsScreen(
            plant: settings.arguments as PlantItem,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => UndefinedView(name: settings.name),
          settings: settings,
        );
    }
  }
}

class UndefinedView extends StatelessWidget {
  final String? name;
  const UndefinedView({
    this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Something went wrong for $name'),
      ),
    );
  }
}
