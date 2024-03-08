import 'package:demo/controller/Reports/report_drawer_controller.dart';
import 'package:demo/view/Homepage/Right_drawer/drawer_right.dart';
import 'package:demo/view/Reports/Widgets/Drawer_Right/report_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerSelection extends StatelessWidget {
  const DrawerSelection({super.key});

  @override
  Widget build(BuildContext context) {
    BoolDrawerController reportSelect = Get.put(BoolDrawerController());
    return reportSelect.reportFilterDrawer.value
        ? const ReportDrawerRight()
        : const DrawerRight();
  }
}
