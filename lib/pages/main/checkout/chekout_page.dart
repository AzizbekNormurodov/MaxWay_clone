import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'dart:math';

import 'package:maxway_clone/pages/main/checkout/widget/button_yes.dart';
import 'package:maxway_clone/pages/main/my_orders/widget/button_no_widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int number = 0;
  int number1 = 0;
  int cost = 0;
  int cost1 = 0;
  int summa = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: Text(
          "Оформить заказ",
          style: ThemeTextStyles.appTitle,
        ),
        actions: [ Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GestureDetector( onTap: (){
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text(
                textAlign: TextAlign.center,
                'Внимание!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              content: Text(
                'Вы уверены, что хотите очистить \nкорзину?', textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff818C99)),
              ),
              actions: [
                CheckoutButtonNo(),
                CheckoutButtonyes(),
              ],

            );
          });
    },
              child: Icon(Icons.delete_outlined, color: ThemeColors.primary,)),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          height: 292,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5, color: ThemeColors.primary))),
                  width: double.infinity,
                  height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12, top: 37, bottom: 38, right: 24),
                        child: Image.asset(
                          "assets/png/sand.png",
                          width: 72,
                          height: 45,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, right: 23),
                            child: Text(
                              'Клаб-сэндвич \n"Янгилик"',
                              style: ThemeTextStyles.order2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 14),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (number == 0) {
                                        return;
                                      }
                                      number--;
                                      cost = number * 19000;
                                      setState(() {});
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStatePropertyAll(
                                            Size(44, 44)),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xffF6F8FB))),
                                  ),
                                ),
                                Text("${number}"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        number++;
                                        cost = number * 19000;
                                      });
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStatePropertyAll(
                                            Size(44, 44)),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xffF6F8FB))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 45),
                        child: Text(
                          "$cost",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: ThemeColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5, color: ThemeColors.primary))),
                  width: double.infinity,
                  height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12, top: 37, bottom: 38, right: 24),
                        child: Image.asset(
                          "assets/png/burgerr.png",
                          width: 72,
                          height: 45,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, right: 23),
                            child: Text(
                              'Макс Бургер',
                              style: ThemeTextStyles.order2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 14),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (number1 == 0) {
                                        return;
                                      }
                                      number1--;
                                      cost1 = number1 * 19000;
                                      setState(() {});
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStatePropertyAll(
                                            Size(44, 44)),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xffF6F8FB))),
                                  ),
                                ),
                                Text("${number1}"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      number1++;
                                      setState(() {
                                        cost1 = number1 * 19000;
                                      });
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStatePropertyAll(
                                            Size(44, 44)),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color(0xffF6F8FB))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 45),
                        child: Text(
                          "$cost1",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: ThemeColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, bottom: 10, top: 10),
                    child: Text(
                      "Сумма заказа",
                      style: ThemeTextStyles.appTitle,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 135, top: 10, bottom: 10),
                    child: Text(
                      "${summa = cost + cost1} сум",
                      style: ThemeTextStyles.appTitle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: 25,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Оформить заказ"),
        ),
      ),
    );
  }
}

