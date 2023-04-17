import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'package:maxway_clone/pages/main/profile/settings/widget/bottom_sheet_widget.dart';

class SettingsPage extends StatefulWidget {
    const SettingsPage({Key? key}) : super(key: key);


  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool switchValue = true;
  bool switchValue1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Настройки",
          style: ThemeTextStyles.appTitle,
        ),
      ),
      body: Column(
        children: [
          GestureDetector( onTap: (){
            Navigator.pop(context);
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return  BottomSheetWidget();
                });
          },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration( color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset("assets/png/world.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 21, bottom: 21),
                      child: Text("Язык",style: ThemeTextStyles.appTitle,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160, top: 23, bottom: 23),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Русский", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff818C99))),
                          Icon(Icons.chevron_right_outlined, color: Color(0xff818C99)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Container(
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration( color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/png/message.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 21, bottom: 21),
                    child: Text("Личные сообщения", style: ThemeTextStyles.appTitle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65, top: 23, bottom: 23),
                    child: Transform.scale( scale: 0.8,
                      child: CupertinoSwitch(
                        value: switchValue,
                        activeColor: ThemeColors.primary,
                        onChanged: (bool? value) {
                          setState(() {
                            switchValue = value ?? false;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Container(
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration( color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/png/notification.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 21, bottom: 21),
                    child: Text("Уведомлений", style: ThemeTextStyles.appTitle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 113, top: 23, bottom: 23),
                    child: Transform.scale( scale: 0.8,
                      child: CupertinoSwitch(
                        value: switchValue1,
                        activeColor: ThemeColors.primary,
                        onChanged: (bool? value) {
                          setState(() {
                            switchValue1 = value ?? false;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
