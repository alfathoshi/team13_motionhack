import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motionhack/app/modules/article_page/views/article_page_view.dart';
import 'package:motionhack/app/modules/community/views/community_view.dart';
import 'package:motionhack/app/modules/consultation/views/consultation_view.dart';
import 'package:motionhack/app/modules/education/views/education_view.dart';
import 'package:motionhack/app/modules/home/views/home_view.dart';
import 'package:motionhack/app/utils/article_card.dart';

import '../controllers/navigation_bar_controller.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  final List<Widget> _pages = [
    HomeView(),
    EducationView(),
    ConsultationView(),
    CommunityView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.selectedindex.value,
            children: _pages,
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedindex.value,
          onTap: (index) {
            controller.changeIndex(index);
          },
          selectedItemColor: Color(0xFF60ABEE),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'Edukasi'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chair),
                label: 'Konsultasi'),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Komunitas',
            ),
          ],
        ),
      ),
    );
  }
}
