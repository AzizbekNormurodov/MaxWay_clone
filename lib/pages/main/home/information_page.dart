import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class InformationPage extends StatefulWidget {
   InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  int number = 1;
  int cost = 25000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Бургеры'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/home/info_burger.png",
                width: double.infinity, height: 310, fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12),
              child: Text(
                "Макс Бургер",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, bottom: 12, top: 8),
              child: Text(
                "Закручен со вкусом! Кусочки нежнейшего \nкуриногофиле в хрустящей остерой чили \nоригинальнойпанировке с сочными листьями\nсалата, кусочкамипомидора и нежным соусом \nмы завернули впшеничную лепешку и \nподжарили в тостере",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff818C99),
                ),
              ),
            ),
            SizedBox(height: 90),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 14),
                  child: ElevatedButton(
                    onPressed: (){


                      if (number==0)
                        {
                          return;
                        }
                      number--;
                      cost = number*25000;
                      setState(() {

                      });

                    },
                    child: Text("-", style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(44, 44)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffF6F8FB))),
                  ),
                ),
                Text("${number}"),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: ElevatedButton(
                    onPressed: () { number++;
                      setState(() {
                        cost = number*25000;
                        if (cost == 0) {cost = 25000;}
                      });},
                    child: Text("+", style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(44, 44)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffF6F8FB))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 12),
                  child: ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, AppRoutes.checkout);
                      setState(() {

                      });
                    },
                    child: Row(
                      children: [
                        Text("Добавить", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                        Text(" ${cost} сум"),
                      ],
                    ),
                    style: ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(202, 44)),
                        backgroundColor: MaterialStatePropertyAll(ThemeColors.primary)),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
