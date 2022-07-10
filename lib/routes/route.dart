import 'package:flutter/material.dart';

//==========================================================================
// Importing all our pages
//==========================================================================
import 'package:kakula/pages/index.dart';
import 'package:kakula/pages/about_app.dart';
import 'package:kakula/pages/about_dev.dart';

//==========================================================================
// Importing all our pages
//==========================================================================
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

//==========================================================================
// Variable for our route names (the name assign to it, is not really needed)
//==========================================================================
const String indexPage = 'index';
const String aboutDevPage = 'aboutDev';
const String aboutAppPage = 'aboutApp';

//==========================================================================
// controller function with switch statement to countrol page route flow
//==========================================================================
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case indexPage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case aboutDevPage:
      return MaterialPageRoute(builder: (context) => const AboutDev());
    case aboutAppPage:
      return MaterialPageRoute(builder: (context) => const AboutApp());
    default:
      throw ('This route name does not exist');
  }
}
