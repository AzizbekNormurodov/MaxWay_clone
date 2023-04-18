import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';
import 'package:maxway_clone/core/theme/theme_text_styles.dart';

class SandvichWidget extends StatefulWidget {
  const SandvichWidget({Key? key}) : super(key: key);

  @override
  State<SandvichWidget> createState() => _SandvichWidgetState();
}

class _SandvichWidgetState extends State<SandvichWidget> {
  int number = 0;
  int cost = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              padding: const EdgeInsets.only(top: 12, left: 63),
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
    );
  }
}
