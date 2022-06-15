import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/constants/ui_helper.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              ),
            ),
          ),
          Positioned(
              child: Image.asset(
            pokeballImageUrl,
            width: ScreenUtil().orientation == Orientation.portrait
                ? 0.2.sh
                : 0.2.sw,
            fit: BoxFit.fitWidth,
          ))
        ],
      ),
    );
  }
}
