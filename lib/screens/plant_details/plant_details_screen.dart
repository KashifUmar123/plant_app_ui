import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_ui/data/mock_data.dart';
import 'package:plant_app_ui/models/plant_item_model.dart';
import 'package:plant_app_ui/screens/plant_details/widgets/plant_item_details_widget.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';
import 'package:plant_app_ui/utils/k_images.dart';
import '../../utils/app_colors.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key, required this.plant});
  final PlantItem plant;

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.height,
        width: context.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              greyColor.withOpacity(.7),
              greyColor.withOpacity(.1),
              lightGreyColor.withOpacity(.2),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.06),
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    _buildLocalHeader(),
                    SizedBox(
                      height: context.height * 0.45,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Hero(
                            tag: widget.plant.name,
                            child: Image.asset(
                              widget.plant.image,
                              height: context.height * 0.45,
                              width: double.infinity,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          _buildDotsIndicator(context),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.plant.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    const AutoSizeText(
                      "Plants are the eukaryotes that form the kingdom Plantae; they are predominantly photosynthetic.",
                    ),
                  ],
                ),
              ),
            ),
            _buildLowerPlantDetailWidget(context),
          ],
        ),
      ),
    );
  }

  Positioned _buildDotsIndicator(BuildContext context) {
    return Positioned(
      bottom: 25,
      right: context.width * 0.05,
      child: Transform.rotate(
        angle: 1.5708,
        child: DotsIndicator(
          dotsCount: 3,
          position: 0,
          decorator: DotsDecorator(
            color: greyColor,
            activeColor: darkGreenColor,
            activeSize: const Size(25.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ),
    );
  }

  Container _buildLowerPlantDetailWidget(BuildContext context) {
    return Container(
      height: context.height * 0.25,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.06,
        vertical: context.height * 0.025,
      ),
      decoration: const BoxDecoration(
        color: greenColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45.0),
          topRight: Radius.circular(45.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PlantItemDetailsSpecificWidget(
                itemSpecifics: "30cm - 40cm",
                itemName: "Height",
                icon: AppIcons.height,
              ),
              PlantItemDetailsSpecificWidget(
                itemSpecifics: "20ºC - 25ºC",
                itemName: "Temprature",
                icon: AppIcons.temprature,
              ),
              PlantItemDetailsSpecificWidget(
                itemSpecifics: "Ciramic Pot",
                itemName: "Pot",
                icon: AppIcons.pot,
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Price",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text(
                    "\$${widget.plant.price}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
              Container(
                height: context.height * 0.08,
                width: context.width * 0.5,
                decoration: BoxDecoration(
                  color: oliveColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLocalHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: blackColor,
          ),
        ),
        const Icon(
          Icons.shopping_cart_outlined,
          color: blackColor,
        ),
      ],
    );
  }
}
