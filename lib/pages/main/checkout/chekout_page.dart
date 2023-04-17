import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'dart:math';

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
                              width: 1, color: ThemeColors.primary))),
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
                        padding:
                            const EdgeInsets.only(top: 12, right: 12, left: 25),
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
                              width: 1, color: ThemeColors.primary))),
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
                                      setState(() {

                                      });
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
                        padding:
                            const EdgeInsets.only(top: 12, right: 12, left: 25),
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
                children: [
                  Text("Сумма заказа", style: ThemeTextStyles.appTitle,),

                  Text("${summa=cost+cost1} сум", style: ThemeTextStyles.appTitle,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class CheckoutItem extends StatefulWidget {
//    CheckoutItem({Key? key, required this.jpg, required this.text,}) : super(key: key);
//   var jpg;
//   String text;
//
//   @override
//   State<CheckoutItem> createState() => _CheckoutItemState();
// }
//
// class _CheckoutItemState extends State<CheckoutItem> {
//   int number =0;
//   int cost =19000;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 12, right: 12),
//       child: Container( decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: ThemeColors.primary))),
//         width: double.infinity, height: 120,
//         child: Row( crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 12, top: 37, bottom: 38, right: 24),
//               child: Image.asset("assets/png/${jpg}", width: 72, height: 45,),
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12,right: 23),
//                   child: Text('Клаб-сэндвич \n"Янгилик"', style: ThemeTextStyles.order2,),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 17),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 12, right: 14),
//                         child: ElevatedButton(
//                           onPressed: (){
//
//
//                             if (number==0)
//                             {
//                               return;
//                             }
//                             number--;
//                             cost = number*19000;
//                             setState(() {
//
//                             });
//
//                           },
//                           child: Text("-", style: TextStyle(color: Colors.black),),
//                           style: ButtonStyle(
//                               minimumSize: MaterialStatePropertyAll(Size(44, 44)),
//                               backgroundColor:
//                               MaterialStatePropertyAll(Color(0xffF6F8FB))),
//                         ),
//                       ),
//                       Text("${number}"),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 14),
//                         child: ElevatedButton(
//                           onPressed: () { number++;
//                           setState(() {
//                             cost = number*19000;
//                             if (cost == 0) {cost = 19000;}
//                           });},
//                           child: Text("+", style: TextStyle(color: Colors.black),),
//                           style: ButtonStyle(
//                               minimumSize: MaterialStatePropertyAll(Size(44, 44)),
//                               backgroundColor:
//                               MaterialStatePropertyAll(Color(0xffF6F8FB))),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 12, right: 12, left: 25),
//               child: Text("$cost", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: ThemeColors.primary,),),
//             ),
//
//
//           ],
//         ),),
//     );
//   }
// }
