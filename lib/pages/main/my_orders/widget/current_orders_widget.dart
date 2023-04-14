import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';

import 'button_no_widget.dart';
import 'button_yes_widget.dart';

class CurrentOrdersWidget extends StatefulWidget {
  const CurrentOrdersWidget({Key? key}) : super(key: key);

  @override
  State<CurrentOrdersWidget> createState() => _CurrentOrdersWidgetState();
}

class _CurrentOrdersWidgetState extends State<CurrentOrdersWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 24, right: 8),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        width: 351,
        height: 144,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Статус заказа №1342",
                  style: ThemeTextStyles.status),
              SizedBox(height: 4),
              Text("Заказ оформлен", style: ThemeTextStyles.order),
              SizedBox(height: 16),
              InkWell(
                  onTap: () {
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
                  child: Image.asset(
                    "assets/my_orders/order is processed.png",
                    width: 327,
                    height: 44,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
