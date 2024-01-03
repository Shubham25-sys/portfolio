import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/assets_const.dart';
import '../../../resources/colors_const.dart';
import '../../../resources/string_const.dart';
import '../../../resources/theme_const.dart';
import '../../../resources/values_const.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return SizedBox(
        height: MediaQuery.of(context).size.height / 1,
        child: Padding(
          padding:   const EdgeInsets.symmetric(vertical: AppPadding.p40,horizontal: AppPadding.p40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppString.hi,style: UpdateStyle.CustomeTextStyle(screenWidth / 40, FontWeightManager.regular, ColorManager.white),),
                  Text(AppString.name,style: UpdateStyle.CustomeTextStyle(screenWidth / 40, FontWeightManager.bold, ColorManager.white)),
                  Row(
                    children: [
                      Image(image: const AssetImage(ImageAssets.line),width: screenWidth / 20 ,),
                      Text(AppString.designation,style: UpdateStyle.CustomeTextStyle(screenWidth / 50, FontWeightManager.bold, ColorManager.primary3)),
                    ],
                  ),
                  SizedBox(height: screenWidth / 15,),
                  SizedBox(
                      width: screenWidth / 2,
                      child:Text(AppString.about,style: UpdateStyle.CustomeTextStyle(screenWidth / 60, FontWeightManager.regular, ColorManager.white))),
                  SizedBox(height: screenWidth / 25,),
                  ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: ColorManager.primary3),child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [Text(AppString.CV,style: UpdateStyle.CustomeTextStyle(screenWidth / 80, FontWeightManager.bold, ColorManager.white)),Icon(CupertinoIcons.doc,color: ColorManager.black,)],))
                ],

              ),
              SizedBox(height:screenWidth / 5,child: VerticalDivider(color: ColorManager.white,width: 2,)),
              CircleAvatar(
                  radius: screenWidth / 10,
                  backgroundColor: Colors.transparent,
                  backgroundImage: const AssetImage(ImageAssets.profilepicture,)
              )
            ],
          ),
        )
    );
  }
}
