import 'package:flutter/material.dart';
import 'package:kakula/routes/route.dart' as route;

void main() {
  runApp(
    MaterialApp(
      initialRoute: route.indexPage,
      navigatorKey: route.navigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
    ),
  );
}
