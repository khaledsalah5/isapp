import 'package:flutter/material.dart';
import 'package:orga_food_restaurant/core/app_icon.dart';
import 'package:orga_food_restaurant/core/app_asset.dart';
import 'package:orga_food_restaurant/src/model/food.dart';
import 'package:orga_food_restaurant/src/model/food_category.dart';
import 'package:orga_food_restaurant/src/model/bottom_navigation_item.dart';

class AppData {
  static const dummyText =
      " I eat salad almost every day for lunch and always looking for ways to mix it up. "
      "juicy grape tomatoes, artichoke hearts, Kalamata olives, cheese, and salami"
      " mini fresh mozzarella .";

  static List<Food> foodItems = [
    Food(
      AppAsset.EggOnTosat,
      "Egg On Tosat",
      10.0,
      1,
      false,
      dummyText,
      5.0,
      FoodType.breakfast,
      150,
    ),
    Food(
      AppAsset.quiche,
      "Quiche",
      15.0,
      1,
      false,
      dummyText,
      3.5,
      FoodType.breakfast,
      652,
    ),
    Food(
      AppAsset.glutenfreepizza,
      "Gluten Free Pizza",
      20.0,
      1,
      false,
      dummyText,
      4.0,
      FoodType.lunch,
      723,
    ),
    Food(
      AppAsset.spicyblackbeanburger,
      "Spicy Black Bean",
      40.0,
      1,
      false,
      dummyText,
      2.5,
      FoodType.burger,
      456,
    ),
    Food(
      AppAsset.Mushroomsandwitch,
      "Mushroom",
      10.0,
      1,
      false,
      dummyText,
      4.5,
      FoodType.lunch,
      650,
    ),
    Food(
      AppAsset.soup,
      "Soup",
      20.0,
      1,
      false,
      dummyText,
      1.5,
      FoodType.soupAndSalad,
      350,
    ),
    Food(
      AppAsset.salad,
      "Salad",
      12.0,
      1,
      false,
      dummyText,
      3.5,
      FoodType.soupAndSalad,
      265,
    ),
    Food(
      AppAsset.Quinoanporridge,
      "Quinoan Porridge",
      30.0,
      1,
      false,
      dummyText,
      4.0,
      FoodType.lunch,
      890,
    ),
  ];

  static List<BottomNavigationItem> bottomNavigationItems = [
    BottomNavigationItem(
      const Icon(Icons.home_outlined),
      const Icon(Icons.home),
      'Home',
      isSelected: true,
    ),
    BottomNavigationItem(
      const Icon(Icons.shopping_cart_outlined),
      const Icon(Icons.shopping_cart),
      'Shopping cart',
    ),
    BottomNavigationItem(
      const Icon(AppIcon.outlinedHeart),
      const Icon(AppIcon.heart),
      'Favorite',
    ),
  ];

  static List<FoodCategory> categories = [
    FoodCategory(FoodType.all, true),
    FoodCategory(FoodType.lunch, false),
    FoodCategory(FoodType.breakfast, false),
    FoodCategory(FoodType.soupAndSalad, false),
    FoodCategory(FoodType.burger, false),
  ];
}
