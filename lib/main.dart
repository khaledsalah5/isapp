import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:orga_food_restaurant/src/view/screen/home_screen.dart';
import 'package:orga_food_restaurant/src/controller/food_controller.dart';
final FoodController controller = Get.put(FoodController());

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MaterialApp(
        theme: controller.theme.value,
        home: HomeScreen(),
      );
    });
    } }