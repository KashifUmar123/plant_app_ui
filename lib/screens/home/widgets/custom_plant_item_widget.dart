import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app_ui/models/plant_item_model.dart';
import 'package:plant_app_ui/utils/extensions/fonts_extension.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';
import 'package:plant_app_ui/utils/routes/route_names.dart';

import '../../../utils/app_colors.dart';

class CustomPlantItemWidget extends StatelessWidget {
  const CustomPlantItemWidget({
    super.key,
    required this.plant,
  });

  final PlantItem plant;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: plant.name,
      child: GestureDetector(
        onTap: () => _navigateToDetailsScreen(context),
        child: Container(
          height: context.height * 0.33,
          width: context.width * 0.415,
          margin: EdgeInsets.symmetric(vertical: context.height * 0.01),
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.04,
            vertical: context.height * 0.02,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                plant.image,
                height: context.height * 0.2,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: double.infinity,
                child: AutoSizeText(
                  plant.name,
                  style: context.text14400.copyWith(fontSize: 12.sp),
                  maxLines: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${plant.price}",
                    style: context.text14400.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 12,
                    backgroundColor: blackColor,
                    child: Icon(
                      Icons.favorite,
                      color: whiteColor,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateToDetailsScreen(BuildContext context) => Navigator.pushNamed(context, RouteNames.plantDetails, arguments: plant);
}
