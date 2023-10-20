import 'package:flutter/material.dart';
import 'package:plant_app_ui/data/mock_data.dart';
import 'package:plant_app_ui/screens/home/widgets/custom_plant_item_widget.dart';
import 'package:plant_app_ui/utils/app_colors.dart';
import 'package:plant_app_ui/utils/extensions/fonts_extension.dart';
import 'package:plant_app_ui/utils/extensions/get_szie_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.06),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.05,
                ),
                _buildLocalHeader(),
                SizedBox(
                  height: context.height * 0.02,
                ),
                _buildSearchAndSettings(),
                SizedBox(
                  height: context.height * 0.02,
                ),
                _buildItemsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildItemsList() {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Found\n10 Results",
                        style: context.text30400.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CustomPlantItemWidget(
                      plant: plants[0],
                    ),
                    CustomPlantItemWidget(
                      plant: plants[1],
                    ),
                    CustomPlantItemWidget(
                      plant: plants[2],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomPlantItemWidget(
                      plant: plants[3],
                    ),
                    CustomPlantItemWidget(
                      plant: plants[4],
                    ),
                    CustomPlantItemWidget(
                      plant: plants[5],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildSearchAndSettings() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: context.height * 0.06,
          width: context.width * .72,
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whiteColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Icon(
                Icons.search,
                color: oliveColor,
              ),
              SizedBox(
                width: context.width * 0.03,
              ),
              Expanded(
                child: TextField(
                  controller: _searchController,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: "Type here",
                    hintStyle: context.text14400,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: context.height * 0.06,
          width: context.width * 0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whiteColor,
          ),
          child: const Center(
            child: Icon(
              Icons.tune,
              color: blackColor,
            ),
          ),
        ),
      ],
    );
  }

  _buildLocalHeader() {
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
        Text(
          "Search Products",
          style: context.text16400,
        ),
        const CircleAvatar(
          radius: 20,
          backgroundColor: lightGreyColor,
          child: Icon(
            Icons.person,
            color: oliveColor,
          ),
        ),
      ],
    );
  }
}
