import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    String url = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Акции'),
        ),
        body: CustomScrollView( slivers: [
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container( color: Colors.white,
                width: 372,
                height: 340,
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: url,
                      child: Image.asset(
                        "assets/home/${url}.png", width: double.infinity, height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: Text("Рамазан-сет", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 8),
                      child: Text(
                        "Сочное донар-блюдо, финики и минеральная вода –"
                            "\nвкусный и сытный набор для Ифтара!"
                            "\nАкция действует во всех филиалах и на заказы с "
                            "\nдоставкой. Пусть в этот светлый месяц вам и вашим \n"
                            "близким сопутствует счастье", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),),
                    ),
                  ],
                ),
              ),
            ),
          ]
          ),),

        ],
        ),);
  }
}
