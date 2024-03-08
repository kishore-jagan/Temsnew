import 'package:demo/view/Station_Master/Data_Management/Widgets/Tabs/dataupload.dart';
import 'package:demo/view/Station_Master/Data_Management/Widgets/Tabs/data_qa.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Homepage/Appbar/appbar.dart';
import '../../Homepage/Left_drawer/drawer_left.dart';
import '../../Homepage/Right_drawer/Widget/float_button.dart';
import '../../Homepage/Right_drawer/drawer_right.dart';
import '../../Homepage/homepage.dart';
import 'data_management(notused).dart';

class DataManagementPage extends StatefulWidget {
  const DataManagementPage({super.key});

  @override
  State<DataManagementPage> createState() => _DataManagementPageState();
}

class _DataManagementPageState extends State<DataManagementPage> with TickerProviderStateMixin {

    late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
                      'Data Management',
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: <Widget>[
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
                          onTap: () => Get.to(() => const DataManagement()),
                          child: const Text(
                            'Data Management',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    TabBar(
              // isScrollable: true,
              indicator: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              controller: _tabController,
              // isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.lightBlue,
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0),
                  child: Tab(
                    text: 'Data QA',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0),
                  child: Tab(
                    text: 'Upload',
                  ),
                ),
          
              ],
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                DataQA(),
                DataUpload(),
                
              ]),
            ),
          ],
        ),
      ),
    );
  }
}