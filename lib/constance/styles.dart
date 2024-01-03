import 'package:flutter/cupertino.dart';

import '../resources/colors_const.dart';
import '../resources/values_const.dart';

BoxDecoration SHeaderDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(AppSize.s50),
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          ColorManager.primary3,
          ColorManager.primary1,
        ]));
