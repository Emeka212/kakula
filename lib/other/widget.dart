import 'Package:flutter/material.dart';
import 'package:kakula/other/color_theme.dart';
import 'package:kakula/routes/route.dart' as route;

//====================================================
// APP BAR WIDGET FOR BASIC AND ADVANCE CAL PAGE
//====================================================
class CalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged onPressed;
  final List<String> popupMenuItemName = ['About Developer', 'About App'];
  final List<String> pageRoute = [route.aboutDevPage, route.aboutAppPage];
  CalAppBar({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: AppTheme().bgColor,
      foregroundColor: AppTheme().txtColor,
      title: Container(
        width: 80.0,
        decoration: BoxDecoration(
          color: AppTheme().secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => onPressed(true),
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    color: AppTheme().iconSun,
                    size: 20.0,
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => onPressed(false),
                  child: Icon(
                    Icons.brightness_2_outlined,
                    color: AppTheme().iconMoon,
                    size: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        PopupMenuButton(
          color: AppTheme().secondaryColor,
          onSelected: (int i) => Navigator.pushNamed(context, pageRoute[i]),
          itemBuilder: (_) => [
            for (int i = 0; i < popupMenuItemName.length; i++)
              PopupMenuItem(
                value: i,
                child: Text(
                  popupMenuItemName[i],
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    color: AppTheme().btnTxtColor,
                    fontSize: 13.5,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

//====================================================
// BUTTON WIDGET
//====================================================
class BtnWidget extends StatelessWidget {
  final String btnValue;
  final Color btnColor;
  final ValueChanged onPressed;
  const BtnWidget({
    Key? key,
    required this.onPressed,
    required this.btnValue,
    required this.btnColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BuildContext v = route.navigatorKey.currentContext as BuildContext;
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: SizedBox(
        width: (MediaQuery.of(v).size.width / 4) - 25,
        height: (MediaQuery.of(v).size.width / 4) - 25,
        child: TextButton(
          onPressed: () => onPressed(btnValue),
          onLongPress: () => onPressed('$btnValue onLongPressed'),
          style: TextButton.styleFrom(
            backgroundColor: AppTheme().btnBgColor,
            primary: btnColor.withOpacity(0.10),
          ),
          child: Text(
            btnValue,
            style: TextStyle(
              fontSize: 25.0,
              color: btnColor,
              fontFamily: 'Nunito',
            ),
          ),
        ),
      ),
    );
  }
}

//====================================================
// TEXT WIDGET (For About Dev Page)
//====================================================
final List<IconData> contactIcon = [
  Icons.mail_outline_rounded,
  Icons.web_rounded,
  Icons.whatsapp_rounded
];
final List<String> contactText = [
  'Stephenugo939@gmail.com',
  'https://mc-stephen.ml',
  '+234 902 656 0079'
];

Widget devText(text, [color, size]) => Text(
      text,
      style: TextStyle(
        color: color ?? AppTheme().btnTxtColor,
        fontSize: size == null ? 15.0 : 20.0,
        fontFamily: 'Nunito',
      ),
    );

//====================================================
// TEXT WIDGET (For About App Page)
//====================================================
Widget appText(text1, text2, [height]) => Container(
      height: 45.0,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppTheme().secondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80.0,
            child: Text(
              text1,
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Nunito',
                color: AppTheme().btnTxtColorSpecialTwo,
              ),
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Nunito',
              color: AppTheme().btnTxtColor,
            ),
          ),
        ],
      ),
    );
