import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MaintenanceCycle extends StatefulWidget {
  const MaintenanceCycle({super.key});

  @override
  State<MaintenanceCycle> createState() => _MaintenanceCycleState();
}

class _MaintenanceCycleState extends State<MaintenanceCycle> {
  List<dynamic> MaintenanceDashboardValue = [
    {
      'icon': 'assets/svg/total_stations.svg',
      'text': 'Total Stations',
    },
    {
      'icon': 'assets/svg/total_cycles.svg',
      'text': 'Total Cycles',
    },
    {
      'icon': 'assets/svg/pm_completed.svg',
      'text': 'PM Completed',
    },
    {
      'icon': 'assets/svg/cm_requests.svg',
      'text': 'CM Requets',
    },
    {
      'icon': 'assets/svg/cm_completed.svg',
      'text': 'CM Completed',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2),
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 6.0),
          ]),
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              children: [
                for (int i = 0; i < MaintenanceDashboardValue.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.only(top: 40),
                      height: 230,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 1),
                            blurRadius: 15,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: SvgPicture.asset(
                                  '${MaintenanceDashboardValue[i]['icon']}',
                                  // ignore: deprecated_member_use
                                  color: Colors.white,
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Text(
                            MaintenanceDashboardValue[i]['text'].toString(),
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
