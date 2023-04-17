import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class OrderHistoryWidget extends StatefulWidget {
  const OrderHistoryWidget({Key? key}) : super(key: key);

  @override
  State<OrderHistoryWidget> createState() => _OrderHistoryWidgetState();
}

class _OrderHistoryWidgetState extends State<OrderHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 5, right: 12),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("В прошлом месяцы", textAlign: TextAlign.start, style: ThemeTextStyles.appTitle,),
          OrderItemWidget(order: "Заказ №1342", summa: "109 540  сум", date: "12.03.2021",),
          OrderItemWidget(order: "Заказ №125", summa: "69 500 сум", date: "19.03.2021"),
          OrderItemWidget(order: "Заказ №64", summa: "34 500 сум", date: "06.03.2021"),
          OrderItemWidget(order: "Заказ №246", summa: "Заказ №246", date: "02.03.2021")

        ],
      ),
    );
  }
}
class OrderItemWidget extends StatelessWidget {
   OrderItemWidget({Key? key,required this.order, required this.summa, required this.date,}) : super(key: key);
String order;
String summa;
String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,),
      child: InkWell( onTap: (){
        Navigator.pushNamed(context, AppRoutes.history);
      },
        child: Container( width: double.infinity, height: 96, decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(12),)),
child: Column( crossAxisAlignment: CrossAxisAlignment.start,
  children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 12),
          child: Text(textAlign: TextAlign.start, order, style: ThemeTextStyles.order2),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 6),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(summa, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, ),),
              Icon(Icons.chevron_right_outlined, color: Color(0xffB8B8B8),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 12),
          child: Text(date, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff818C99),),),
        ),
  ],
),

        ),
      ),
    );
  }
}
