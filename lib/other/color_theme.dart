import 'Package:flutter/material.dart';

//======================================================================
// DARK THEME IS THE DEFAULT COLOR
//======================================================================
bool lightTheme = false;

//======================================================================
// THEME FOR THE APP (FOR DARK (1ST) & LIGHT (2ND) THEME)
//======================================================================
class AppTheme {
  Color bgColor =
      lightTheme == false ? const Color(0xff22252d) : const Color(0xffffffff);
  Color secondaryColor =
      lightTheme == false ? const Color(0xff292d36) : const Color(0xfff9f9f9);
  Color btnBgColor =
      lightTheme == false ? const Color(0xff272b33) : const Color(0xfff7f7f7);
  Color btnTxtColor =
      lightTheme == false ? const Color(0xfffafbfb) : const Color(0xff4d5058);
  Color btnTxtColorSpecial =
      lightTheme == false ? const Color(0xffca5c5d) : const Color(0xffca5c5d);
  Color btnTxtColorSpecialTwo =
      lightTheme == false ? const Color(0xff26fed6) : const Color(0xff26fed6);
  Color iconSun =
      lightTheme == false ? const Color(0xff6d6f76) : const Color(0xff43464e);
  Color iconMoon =
      lightTheme == false ? const Color(0xffdadbdc) : const Color(0xffe1e1e1);
  Color txtColor =
      lightTheme == false ? const Color(0xffe9e9ea) : const Color(0xff373b44);
  Color txtColorAnswer =
      lightTheme == false ? const Color(0xffffffff) : const Color(0xff292d36);
}
