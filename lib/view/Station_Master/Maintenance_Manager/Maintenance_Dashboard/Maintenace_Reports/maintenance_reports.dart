import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Homepage/Appbar/appbar.dart';
import '../../../../Homepage/Left_drawer/drawer_left.dart';
import '../../../../Homepage/Right_drawer/Widget/float_button.dart';
import '../../../../Homepage/Right_drawer/drawer_right.dart';
import '../../../../Homepage/homepage.dart';

class MaintenanceDashboardPage extends StatefulWidget {
  const MaintenanceDashboardPage({super.key});

  @override
  State<MaintenanceDashboardPage> createState() =>
      _MaintenanceDashboardPageState();
}

class _MaintenanceDashboardPageState extends State<MaintenanceDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(context),
      drawer: const DrawerLeft(),
      endDrawer: const DrawerRight(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Maintenance Dashboard',
              style: TextStyle(fontSize: 25),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => Get.to(() => const HomePage()),
                  child: const Text(
                    'Home',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 15,
                  width: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () => Get.to(() => const MaintenanceDashboardPage()),
                  child: const Text(
                    'Maintenance Dashboard',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
