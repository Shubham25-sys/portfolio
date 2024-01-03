import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/desktop_widgets/header_desktop.dart';
import 'package:portfolio/presentation/widgets/desktop_widgets/main_desktop.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/header_modile.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/mobile_drawer.dart';
import 'package:portfolio/resources/assets_const.dart';
import 'package:portfolio/resources/string_const.dart';
import 'package:portfolio/resources/theme_const.dart';
import 'package:portfolio/resources/values_const.dart';

import '../constance/list.dart';
import '../constance/styles.dart';
import '../resources/colors_const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (BuildContext context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: ColorManager.primary1,
        drawer:constraints.maxWidth >= sMinDesktopWidth ? null : const MobileDrawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            if(constraints.maxWidth >= sMinDesktopWidth)
            HeaderDesktop(onButtonPrssed: (){},)
            else
            HeaderMobile(
              onIconMenuTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
            ),
            MainDesktop(),

            //ABOUT
            Container(
              height: MediaQuery.of(context).size.height / 1,
              width: double.infinity,
              color: ColorManager.primary2,
            ),
            //EDUCATION
            Container(
              height: MediaQuery.of(context).size.height / 1,
              width: double.infinity,
            ),
            //EXPERIENCE
            Container(
              height: MediaQuery.of(context).size.height / 1,
              width: double.infinity,
              color: ColorManager.primary2,
            ),
            //SKILLS
            Container(
              height: MediaQuery.of(context).size.height / 1,
              width: double.infinity,
            ),
            //CONTACT
            Container(
              height: MediaQuery.of(context).size.height / 1,
              width: double.infinity,
              color: ColorManager.primary2,
            ),
          ],
        ),
      );},
    );
  }
}
