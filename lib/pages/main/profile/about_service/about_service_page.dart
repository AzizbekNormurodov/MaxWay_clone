import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class AboutServicePage extends StatelessWidget {
  const AboutServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text("О сервисе", style: ThemeTextStyles.appTitle ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: Container( width: double.infinity, height: 195, decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              AboutItem(text: "Политика конденциалности"),
              AboutItem(text: "Лицензионные соглашения"),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: Container( width: 339, height: 56, color: Colors.white,
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Работа в MaxWay",style: ThemeTextStyles.order2,),
                      Icon(Icons.chevron_right),
                    ],
                  ),

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
class AboutItem extends StatelessWidget {
   AboutItem({Key? key, required this. text}) : super(key: key);
String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 8),
      child: GestureDetector( onTap: (){
        Navigator.pushNamed(context, AppRoutes.conditionality);
      },
        child: Container( width: 339, height: 56, decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.5, color: Color(0xffDFDFDF)))),
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text, style: ThemeTextStyles.order2,),
            Icon(Icons.chevron_right),
          ],
        ),

        ),
      ),
    );
  }
}

