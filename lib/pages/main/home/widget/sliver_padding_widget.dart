import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';

class SliverPaddingWidget extends StatelessWidget {
   SliverPaddingWidget({Key? key}) : super(key: key);
  List<String> list_sandwich = ["Sandwich1", "Sandwich2", "club sandwich from", "cold sandwich"];
  List<String> list_sandwich_text = ["Макс Бургер", "Макс Бургер", "Клаб-сэндвич из\nкурицы", "Клаб-сэндвич из \nкурицы"];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          mainAxisExtent: 222,
        ),
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              child: Material(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      width: 170,
                      height: 124,
                      "assets/home/${list_sandwich[index]}.png",
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 4,),
                      child: Text(
                        "${list_sandwich_text[index]}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      width: 154,
                      height: 40,
                      decoration: BoxDecoration(
                          color: ThemeColors.light_grey,
                          borderRadius:
                          BorderRadius.all(Radius.circular(12))),
                      child: Center(child: Text("25 000 сум", style: TextStyle(color: Colors.black, fontSize: 15),)),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: 4,
        ),
      ),
    );
  }
}
