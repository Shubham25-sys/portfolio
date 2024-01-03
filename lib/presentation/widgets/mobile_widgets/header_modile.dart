import 'package:flutter/material.dart';

import '../../../constance/styles.dart';
import '../../../resources/colors_const.dart';
import '../../../resources/values_const.dart';

class HeaderMobile extends StatelessWidget {
   HeaderMobile({super.key, this.onIconMenuTap});
  final VoidCallback? onIconMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSize.s40,
        width: double.infinity,
        margin: const EdgeInsets.only(
            top: AppSize.s10, bottom: AppSize.s10, left: AppSize.s10),
        decoration: SHeaderDecoration,
        child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: onIconMenuTap,
              icon: Icon(
                Icons.menu,
                color: ColorManager.white,
              ),
            )));
  }
}
