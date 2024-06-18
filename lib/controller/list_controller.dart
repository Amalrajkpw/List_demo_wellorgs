import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Fig',
    'Grape',
    'Lemon',
    'Mango',
    'Orange',
    'Papaya',
    'Peach',
    'Plum',
    'Raspberry',
    'Strawberry',
    'Watermelon',
  ];

  var filteredData = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredData.value = data;
    searchController.addListener(_performSearch);
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  void _performSearch() {
    filteredData.value = data
        .where((element) =>
            element.toLowerCase().contains(searchController.text.toLowerCase()))
        .toList();
  }
}
