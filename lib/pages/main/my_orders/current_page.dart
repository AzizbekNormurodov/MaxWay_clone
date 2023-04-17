import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'package:maxway_clone/pages/main/my_orders/widget/order_history_widget.dart';
import 'package:maxway_clone/pages/main/my_orders/widget/status_widget.dart';

import 'widget/button_no_widget.dart';
import 'widget/button_yes_widget.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Текущий заказ"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              "assets/my_orders/current.png",
              width: double.infinity,
              height: 88,
            ),
          ),
          Container( width: 351, height: 220,  decoration: BoxDecoration( color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Сумма товаров", style: ThemeTextStyles.order2,),
                        Text("103 540 сум", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Шаурма с говядиной  1x", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                        Text("16 590 сум", style: ThemeTextStyles.order3,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Клаб-сэндвич бон-филе  3x", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                        Text("43 770 сум", style: ThemeTextStyles.order3,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Лаваш с сыром", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                        Text("43 180 сум", style: ThemeTextStyles.order3,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12,),
                    child: Image.asset("assets/my_orders/Rectangle 4.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Сумма доставки", style: ThemeTextStyles.order2,),
                        Text("6 000 сум", style: ThemeTextStyles.order3,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Скидка", style: ThemeTextStyles.order2,),
                        Text("-5%", style: ThemeTextStyles.order3,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12, top: 25,),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Общая сумма", style: ThemeTextStyles.appTitle),
                        Text("-5%", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400,)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell( onTap: (){
            showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text(
                                textAlign: TextAlign.center,
                                'Поздравляем',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              content: Text(
                                'Ваш заказ успешно доставлен! \nВам понравилось наш обслуга?',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff818C99)),
                              ),
                              actions: [
                                ButtonNoWidget(),
                                ButtonYesWidget(),
                              ],
                            );
                          });
                    },
              child: StatusWidget(),),
        ],
      ),
    );
  }
}
