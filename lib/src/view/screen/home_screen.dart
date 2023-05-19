import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:orga_food_restaurant/core/app_data.dart';
import 'package:orga_food_restaurant/src/view/screen/cart_screen.dart';
import 'package:orga_food_restaurant/src/controller/food_controller.dart';
import 'package:orga_food_restaurant/src/view/screen/favorite_screen.dart';
import 'package:orga_food_restaurant/src/view/screen/food_list_screen.dart';

final FoodController controller = Get.put(FoodController());

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Widget> screen = [
    const FoodListScreen(),
    const CartScreen(),
    const FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screen[controller.currentBottomNavItemIndex.value],
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentBottomNavItemIndex.value,
          onTap: controller.switchBetweenBottomNavigationItems,
          selectedFontSize: 0,
          items: AppData.bottomNavigationItems.map(
            (element) {
              return BottomNavigationBarItem(
                icon: element.disableIcon,
                label: element.label,
                activeIcon: element.enableIcon,
              );
            },
          ).toList(),
        );
      }),
    );
  }
}
