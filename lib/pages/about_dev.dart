import 'package:flutter/material.dart';
import 'package:kakula/other/widget.dart';
import 'package:kakula/other/color_theme.dart';

class AboutDev extends StatelessWidget {
  const AboutDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().bgColor,
      appBar: AppBar(
        title: const Text('About Developer'),
        centerTitle: true,
        backgroundColor: AppTheme().secondaryColor,
        foregroundColor: AppTheme().txtColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/profile1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      devText('I\'m '),
                      devText('Michael Chukwuemeka Stephen',
                          AppTheme().btnTxtColorSpecialTwo, 20.0),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  devText(
                      'I am a full-stack web and mobile (flutter) developer, am personate about creating usefull and relevant apps and web apps, with 4+ years of expirence (at the time of creating this app). I stated coding at the age of 18 and that have been one of the best thing that has happen to me. If you feel like pertronizing me, please do feel free to contact me using any of the options below.'),
                  for (int i = 0; i < contactText.length; i++)
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: AppTheme().secondaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            contactIcon[i],
                            color: AppTheme().btnTxtColorSpecial,
                          ),
                          const SizedBox(width: 5.0),
                          SelectableText(
                            contactText[i],
                            style: TextStyle(
                              color: AppTheme().txtColor,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
