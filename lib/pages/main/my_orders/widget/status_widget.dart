import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
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
              const Text("Статус заказа №1342", style: ThemeTextStyles.status),
              SizedBox(height: 4),
              Text("Заказ оформлен", style: ThemeTextStyles.order),
              SizedBox(height: 16),
              Image.asset(
                "assets/my_orders/order is processed.png",
                width: 327,
                height: 44,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
