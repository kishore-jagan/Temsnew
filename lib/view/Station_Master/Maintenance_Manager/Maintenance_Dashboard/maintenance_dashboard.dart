import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Homepage/Appbar/appbar.dart';
import '../../../Homepage/Left_drawer/drawer_left.dart';
import '../../../Homepage/Right_drawer/Widget/float_button.dart';
import '../../../Homepage/Right_drawer/drawer_right.dart';
import '../../../Homepage/homepage.dart';
import 'Maintenance_Cycle/maintenance_cycle.dart';

class MaintenanceDashboardPage extends StatefulWidget {
  const MaintenanceDashboardPage({super.key});

  @override
  State<MaintenanceDashboardPage> createState() =>
      _MaintenanceDashboardPageState();
}

class _MaintenanceDashboardPageState extends State<MaintenanceDashboardPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
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
        padding: const EdgeInsets.all(16.0),
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
                    'Maintenance Module',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
            TabBar(
              indicator: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              controller: _tabController,
              // isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.lightBlue,
              tabs: const [
                Tab(
                  text: 'Maintenance Cycle',
                ),
                Tab(
                  text: 'Maintenance Reports',
                ),
                Tab(
                  text: 'Maintenance Requests',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                MaintenanceCycle(),
                Text('hi'),
                Text('malini'),
              ]),
            ),

            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 40,
            //       width: 230,
            //       decoration: BoxDecoration(
            //         color: Colors.lightBlue,
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: TextButton.icon(
            //         onPressed: () {
            //           Get.to(() => const MaintenanceSettingsPage());
            //         },
            //         icon: SvgPicture.asset(
            // 'assets/svg/maintenance_cycle.svg',
            //           color: Colors.white,
            //         ),
            //         label: Text(
            //           'Maintenance Cycle',
            //           style: TextStyle(color: Colors.white, fontSize: 16),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 40,
            //       width: 250,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: TextButton.icon(
            //         onPressed: () {
            //           Get.to(() => const MaintenanceSettingsPage());
            //         },
            //         icon: SvgPicture.asset(
            //             'assets/svg/maintenance_reports.svg'),
            //         label: Text(
            //           'Maintenance Reports',
            //           style: TextStyle(color: Colors.black, fontSize: 16),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 40,
            //       width: 250,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: TextButton.icon(
            //         onPressed: () {},
            //         icon: SvgPicture.asset(
            //             'assets/svg/maintenance_request.svg'),
            //         label: Text(
            //           'Maintenance Request',
            //           style: TextStyle(color: Colors.black, fontSize: 16),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
