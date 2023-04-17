import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';

class ConditionalityPage extends StatelessWidget {
  const ConditionalityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text("Политика конденциалности", style: ThemeTextStyles.appTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
        child: Container(
          height: 190,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 8),
                child: Text(
                  "Мы делаем клиентов счастливыми",
                  style: ThemeTextStyles.appTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Text(
                  "История компании MaxWay работает на \nбыстрорастущем рынке Республики Узбекистан и \nориентирована на удовлетворение растущего спроса \nрынка. Компания продемонстрировала отличные \nрезультаты за последние 4 лет и устойчиво растет за \nсчет основного направления бизнеса: Продукты \nпитания и напитки.",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
