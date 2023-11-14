import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/Settings.svg',
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: () {  },
    ),
    actions: [
      buildAppButton(context),
    ],
  );
}

Padding buildAppButton(BuildContext context) {
  SizeConfig().init(context);
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: getProportionateScreenWidth(32),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.add,
        ),
      ),
    ),
  );
}