import 'package:flutter/material.dart';

import '../../../constance/list.dart';
import '../../../resources/colors_const.dart';
import '../../../resources/theme_const.dart';
import '../../../resources/values_const.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.primary2,
      child: ListView(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [ColorManager.primary2, ColorManager.primary3])),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shubham Rajendra Wani',style: UpdateStyle.CustomeTextStyle(FontSize.s20, FontWeightManager.bold, ColorManager.white),),
                  Text('Flutter Developer',style: UpdateStyle.CustomeTextStyle(FontSize.s18, FontWeightManager.bold, ColorManager.primary3),)
                ],
              ),
            ),
          ),
          for(int i = 0; i<menuIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: AppPadding.p10,horizontal: AppPadding.p10),
              onTap: (){},
              leading: Icon(menuIcons[i],color: ColorManager.white,),
              title: Text(headerButtonText[i],style: UpdateStyle.CustomeTextStyle(FontSize.s14, FontWeightManager.medium, ColorManager.white),),
            )
        ],
      ),
    );
  }
}
