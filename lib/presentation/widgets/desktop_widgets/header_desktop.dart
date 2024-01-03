import 'package:flutter/material.dart';
import 'package:portfolio/constance/styles.dart';

import '../../../constance/list.dart';
import '../../../resources/colors_const.dart';
import '../../../resources/theme_const.dart';
import '../../../resources/values_const.dart';

class HeaderDesktop extends StatelessWidget {
   HeaderDesktop({super.key, this.onButtonPrssed});
  final VoidCallback? onButtonPrssed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s60,
      width: double.infinity,
      margin: const EdgeInsets.only(
          top: AppSize.s10, bottom: AppSize.s10, left: AppSize.s200),
      decoration: SHeaderDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < headerButtonText.length; i++)
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: StadiumBorder(),
                    foregroundColor: ColorManager.primary1),
                child: Text(
                  headerButtonText[i],
                  style: UpdateStyle.CustomeTextStyle(FontSize.s14,
                      FontWeightManager.regular, ColorManager.white),
                ))
        ],
      ),
    );
  }
}
