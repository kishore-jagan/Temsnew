import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Homepage/Appbar/appbar.dart';
import '../../../Homepage/Left_drawer/drawer_left.dart';
import '../../../Homepage/Right_drawer/Widget/float_button.dart';
import '../../../Homepage/Right_drawer/drawer_right.dart';
import '../../../Homepage/homepage.dart';

class MaintenanceSettingsPage extends StatefulWidget {
  const MaintenanceSettingsPage({super.key});

  @override
  State<MaintenanceSettingsPage> createState() =>
      _MaintenanceSettingsPageState();
}

class _MaintenanceSettingsPageState extends State<MaintenanceSettingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(context),
      drawer: const DrawerLeft(),
      endDrawer: const DrawerRight(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatButton(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Configurations',
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
                  onTap: () => Get.to(() => const MaintenanceSettingsPage()),
                  child: const Text(
                    'Maintenance Settings',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
            TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.lightBlue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.lightBlue,
              tabs: const [
                Tab(
                  text: 'Configurations',
                ),
                Tab(
                  text: 'Man Power',
                ),
                Tab(
                  text: 'Physical Inspection',
                ),
                Tab(
                  text: 'Standard Procedure',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
