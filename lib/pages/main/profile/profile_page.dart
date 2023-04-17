import 'package:flutter/material.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Алишер Тохиров',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                '+998 99 859 91 70',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff818C99)),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: GestureDetector( onTap: (){
                Navigator.pushNamed(context, AppRoutes.editProfile);
              },
                  child: Image.asset("assets/png/Edit Square.png")),
            ),
          ],
        ),
        body: Column(
          children: [
            ProfileItem(
              icon: "assets/png/filial.png", text: "Филиали", onTap: () {
              Navigator.pushNamed(context, AppRoutes.filial);
            },),
            ProfileItem(
              icon: "assets/png/setting.png",
              text: "Настройки", onTap: (){
                Navigator.pushNamed(context, AppRoutes.settings);
            },
            ),
            ProfileItem(icon: "assets/png/info.png", text: "О сервисе", onTap: (){
              Navigator.pushNamed(context, AppRoutes.about);
            }),
          ],
        ));
  }
}

class ProfileItem extends StatelessWidget {
  ProfileItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  String icon;
  String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Ink(
        width: double.infinity,
        height: 64,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.only(left: 12, top: 4),
          leading: Image.asset(
            icon,
            width: 40,
            height: 40,
          ),
          title: Text(
            text,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Icon(Icons.chevron_right_outlined),
        ),
      ),
    );
  }
}
