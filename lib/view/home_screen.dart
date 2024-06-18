import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list_demo_wellorgs/controller/list_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final ListController homeController = Get.put(ListController());

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration:const  BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: TextField(
            controller: homeController.searchController,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.white54),
              border: InputBorder.none,
            ),
          ),
        ),
        body: Obx(() {
          return ListView.builder(
            itemCount: homeController.filteredData.length,
            itemBuilder: (context, index) => ListTile(
                title: Text(
              homeController.filteredData[index],
              style: const TextStyle(color: Colors.black),
            )),
          );
        }),

      );
}
