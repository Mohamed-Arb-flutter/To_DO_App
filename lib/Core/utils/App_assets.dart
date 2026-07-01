import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class AppSvg {
  static SvgPicture lets_start = SvgPicture.asset(
    'assets/imges/lets_start.svg',
  );
  static SvgPicture NotfoundTask = SvgPicture.asset(
    'assets/imges/notfoundtask.svg',
  );
  static SvgPicture password_icon = SvgPicture.asset(
    'assets/imges/Password - Iconly Pro.svg',
  );
  static SvgPicture Username_icon = SvgPicture.asset(
    'assets/imges/Profile - Iconly Pro.svg',
    width: 20, // الحجم اللي انت عايزه
    height: 20,
    fit: BoxFit.contain,
  );
  static SvgPicture splach = SvgPicture.asset('assets/imges/splach.svg');
}

abstract class AppPng {
  static Image plastin = Image.asset("assets/imges/plasten.png");
}
