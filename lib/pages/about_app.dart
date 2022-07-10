import 'package:flutter/material.dart';
import 'package:kakula/other/widget.dart';
import 'package:kakula/other/color_theme.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().bgColor,
      appBar: AppBar(
        title: const Text('About App'),
        centerTitle: true,
        backgroundColor: AppTheme().secondaryColor,
        foregroundColor: AppTheme().txtColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/app_icon.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  appText('Discription:', 'A simple colorfull calculator app'),
                  appText('Built date:', '2021, September'),
                  appText('Realease:', '2022, July'),
                  appText('Created By:', 'MC-STEPHEN'),
                  appText('Product Of:', 'Axxellance'),
                  appText('Version:', '1.0.0'),
                  appText('Price:', 'Free'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// my first flutter project