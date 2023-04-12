import 'package:flutter/material.dart';

import '../../../../core/theme/theme_colors.dart';

class ListViewBuilderWidget extends StatelessWidget {
   ListViewBuilderWidget({Key? key}) : super(key: key);
  List<String> list_text = [
    'Бургеры',
    "Сендвич",
    "Лаваш",
    "Картошка фри",
    'Бургеры'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return TextButton(
          onPressed: () {},
          style: ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(92, 36)),
              overlayColor: MaterialStatePropertyAll(
                ThemeColors.primary,
              ),
              backgroundColor:
              MaterialStatePropertyAll(Colors.white)),
          child: Center(
            child: Text(
              "${list_text[index]}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),),
        );
      },
      separatorBuilder: (context, index) => SizedBox(width: 12),
      itemCount: 5,
    );
  }
}
