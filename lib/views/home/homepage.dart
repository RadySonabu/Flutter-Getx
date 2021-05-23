import 'dart:developer';

import 'package:app/features/flavor_profiling/data/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return SafeArea(
        child: Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Forsy'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.amber[800],
          onTap: (item) {
            controller.onItemTapped(item);
          },
        ),
        body: Container(
          child: Text('asdf'),
        ),
      ),
    ));
  }
}
